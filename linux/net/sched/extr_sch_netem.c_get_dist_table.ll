; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_get_dist_table.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_get_dist_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.disttable = type { i64, i32* }
%struct.nlattr = type { i32 }

@NETEM_DIST_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.disttable**, %struct.nlattr*)* @get_dist_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dist_table(%struct.Qdisc* %0, %struct.disttable** %1, %struct.nlattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.disttable**, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.disttable*, align 8
  %12 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.disttable** %1, %struct.disttable*** %6, align 8
  store %struct.nlattr* %2, %struct.nlattr** %7, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %14 = call i32 @nla_len(%struct.nlattr* %13)
  %15 = sext i32 %14 to i64
  %16 = udiv i64 %15, 4
  store i64 %16, i64* %8, align 8
  %17 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %18 = call i32* @nla_data(%struct.nlattr* %17)
  store i32* %18, i32** %9, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @NETEM_DIST_MAX, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %77

28:                                               ; preds = %21
  %29 = load i64, i64* %8, align 8
  %30 = mul i64 %29, 4
  %31 = add i64 16, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.disttable* @kvmalloc(i32 %32, i32 %33)
  store %struct.disttable* %34, %struct.disttable** %11, align 8
  %35 = load %struct.disttable*, %struct.disttable** %11, align 8
  %36 = icmp ne %struct.disttable* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %77

40:                                               ; preds = %28
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.disttable*, %struct.disttable** %11, align 8
  %43 = getelementptr inbounds %struct.disttable, %struct.disttable* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %61, %40
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %8, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.disttable*, %struct.disttable** %11, align 8
  %56 = getelementptr inbounds %struct.disttable, %struct.disttable* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %44

64:                                               ; preds = %44
  %65 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %66 = call i32* @qdisc_root_sleeping_lock(%struct.Qdisc* %65)
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.disttable**, %struct.disttable*** %6, align 8
  %70 = load %struct.disttable*, %struct.disttable** %69, align 8
  %71 = load %struct.disttable*, %struct.disttable** %11, align 8
  %72 = call i32 @swap(%struct.disttable* %70, %struct.disttable* %71)
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @spin_unlock_bh(i32* %73)
  %75 = load %struct.disttable*, %struct.disttable** %11, align 8
  %76 = call i32 @dist_free(%struct.disttable* %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %64, %37, %25
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.disttable* @kvmalloc(i32, i32) #1

declare dso_local i32* @qdisc_root_sleeping_lock(%struct.Qdisc*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @swap(%struct.disttable*, %struct.disttable*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dist_free(%struct.disttable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
