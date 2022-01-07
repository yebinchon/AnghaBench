; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_set_default.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_set_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc_ops = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@qdisc_mod_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sch_%s\00", align 1
@default_qdisc_ops = common dso_local global %struct.Qdisc_ops* null, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdisc_set_default(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Qdisc_ops*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @CAP_NET_ADMIN, align 4
  %6 = call i32 @capable(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EPERM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = call i32 @write_lock(i32* @qdisc_mod_lock)
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.Qdisc_ops* @qdisc_lookup_default(i8* %13)
  store %struct.Qdisc_ops* %14, %struct.Qdisc_ops** %4, align 8
  %15 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %4, align 8
  %16 = icmp ne %struct.Qdisc_ops* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = call i32 @write_unlock(i32* @qdisc_mod_lock)
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @request_module(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @write_lock(i32* @qdisc_mod_lock)
  %22 = load i8*, i8** %3, align 8
  %23 = call %struct.Qdisc_ops* @qdisc_lookup_default(i8* %22)
  store %struct.Qdisc_ops* %23, %struct.Qdisc_ops** %4, align 8
  br label %24

24:                                               ; preds = %17, %11
  %25 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %4, align 8
  %26 = icmp ne %struct.Qdisc_ops* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** @default_qdisc_ops, align 8
  %29 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @module_put(i32 %30)
  %32 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %4, align 8
  store %struct.Qdisc_ops* %32, %struct.Qdisc_ops** @default_qdisc_ops, align 8
  br label %33

33:                                               ; preds = %27, %24
  %34 = call i32 @write_unlock(i32* @qdisc_mod_lock)
  %35 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %4, align 8
  %36 = icmp ne %struct.Qdisc_ops* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i32 [ 0, %37 ], [ %40, %38 ]
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %8
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.Qdisc_ops* @qdisc_lookup_default(i8*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @request_module(i8*, i8*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
