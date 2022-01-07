; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_proto_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_proto_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.can_proto = type { i32, i32 }

@CAN_NPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"can: protocol number %d out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@proto_tab_lock = common dso_local global i32 0, align 4
@proto_tab = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"can: protocol %d already registered\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_proto_register(%struct.can_proto* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.can_proto*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.can_proto* %0, %struct.can_proto** %3, align 8
  %6 = load %struct.can_proto*, %struct.can_proto** %3, align 8
  %7 = getelementptr inbounds %struct.can_proto, %struct.can_proto* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CAN_NPROTO, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %62

20:                                               ; preds = %11
  %21 = load %struct.can_proto*, %struct.can_proto** %3, align 8
  %22 = getelementptr inbounds %struct.can_proto, %struct.can_proto* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @proto_register(i32 %23, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %62

29:                                               ; preds = %20
  %30 = call i32 @mutex_lock(i32* @proto_tab_lock)
  %31 = load i32*, i32** @proto_tab, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @rcu_access_pointer(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %51

43:                                               ; preds = %29
  %44 = load i32*, i32** @proto_tab, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.can_proto*, %struct.can_proto** %3, align 8
  %50 = call i32 @RCU_INIT_POINTER(i32 %48, %struct.can_proto* %49)
  br label %51

51:                                               ; preds = %43, %38
  %52 = call i32 @mutex_unlock(i32* @proto_tab_lock)
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.can_proto*, %struct.can_proto** %3, align 8
  %57 = getelementptr inbounds %struct.can_proto, %struct.can_proto* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @proto_unregister(i32 %58)
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %27, %15
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @proto_register(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.can_proto*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @proto_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
