; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_msgutil.c_alloc_msg.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_msgutil.c_alloc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_msg = type { %struct.msg_msgseg*, i32* }
%struct.msg_msgseg = type { %struct.msg_msgseg* }

@DATALEN_MSG = common dso_local global i32 0, align 4
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@DATALEN_SEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msg_msg* (i64)* @alloc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msg_msg* @alloc_msg(i64 %0) #0 {
  %2 = alloca %struct.msg_msg*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.msg_msg*, align 8
  %5 = alloca %struct.msg_msgseg**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.msg_msgseg*, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i32, i32* @DATALEN_MSG, align 4
  %10 = call i64 @min(i64 %8, i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = add i64 16, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %15 = call i8* @kmalloc(i32 %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.msg_msg*
  store %struct.msg_msg* %16, %struct.msg_msg** %4, align 8
  %17 = load %struct.msg_msg*, %struct.msg_msg** %4, align 8
  %18 = icmp eq %struct.msg_msg* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.msg_msg* null, %struct.msg_msg** %2, align 8
  br label %62

20:                                               ; preds = %1
  %21 = load %struct.msg_msg*, %struct.msg_msg** %4, align 8
  %22 = getelementptr inbounds %struct.msg_msg, %struct.msg_msg* %21, i32 0, i32 0
  store %struct.msg_msgseg* null, %struct.msg_msgseg** %22, align 8
  %23 = load %struct.msg_msg*, %struct.msg_msg** %4, align 8
  %24 = getelementptr inbounds %struct.msg_msg, %struct.msg_msg* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %3, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %3, align 8
  %28 = load %struct.msg_msg*, %struct.msg_msg** %4, align 8
  %29 = getelementptr inbounds %struct.msg_msg, %struct.msg_msg* %28, i32 0, i32 0
  store %struct.msg_msgseg** %29, %struct.msg_msgseg*** %5, align 8
  br label %30

30:                                               ; preds = %47, %20
  %31 = load i64, i64* %3, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = call i32 (...) @cond_resched()
  %35 = load i64, i64* %3, align 8
  %36 = load i32, i32* @DATALEN_SEG, align 4
  %37 = call i64 @min(i64 %35, i32 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %42 = call i8* @kmalloc(i32 %40, i32 %41)
  %43 = bitcast i8* %42 to %struct.msg_msgseg*
  store %struct.msg_msgseg* %43, %struct.msg_msgseg** %7, align 8
  %44 = load %struct.msg_msgseg*, %struct.msg_msgseg** %7, align 8
  %45 = icmp eq %struct.msg_msgseg* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %59

47:                                               ; preds = %33
  %48 = load %struct.msg_msgseg*, %struct.msg_msgseg** %7, align 8
  %49 = load %struct.msg_msgseg**, %struct.msg_msgseg*** %5, align 8
  store %struct.msg_msgseg* %48, %struct.msg_msgseg** %49, align 8
  %50 = load %struct.msg_msgseg*, %struct.msg_msgseg** %7, align 8
  %51 = getelementptr inbounds %struct.msg_msgseg, %struct.msg_msgseg* %50, i32 0, i32 0
  store %struct.msg_msgseg* null, %struct.msg_msgseg** %51, align 8
  %52 = load %struct.msg_msgseg*, %struct.msg_msgseg** %7, align 8
  %53 = getelementptr inbounds %struct.msg_msgseg, %struct.msg_msgseg* %52, i32 0, i32 0
  store %struct.msg_msgseg** %53, %struct.msg_msgseg*** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %3, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %3, align 8
  br label %30

57:                                               ; preds = %30
  %58 = load %struct.msg_msg*, %struct.msg_msg** %4, align 8
  store %struct.msg_msg* %58, %struct.msg_msg** %2, align 8
  br label %62

59:                                               ; preds = %46
  %60 = load %struct.msg_msg*, %struct.msg_msg** %4, align 8
  %61 = call i32 @free_msg(%struct.msg_msg* %60)
  store %struct.msg_msg* null, %struct.msg_msg** %2, align 8
  br label %62

62:                                               ; preds = %59, %57, %19
  %63 = load %struct.msg_msg*, %struct.msg_msg** %2, align 8
  ret %struct.msg_msg* %63
}

declare dso_local i64 @min(i64, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @free_msg(%struct.msg_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
