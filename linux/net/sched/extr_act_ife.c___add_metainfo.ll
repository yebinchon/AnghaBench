; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c___add_metainfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c___add_metainfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_meta_ops = type { i32 (%struct.tcf_meta_info*, i8*, i32)* }
%struct.tcf_meta_info = type opaque
%struct.tcf_ife_info = type { i32, i32 }
%struct.tcf_meta_info.0 = type { i32, %struct.tcf_meta_ops*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_meta_ops*, %struct.tcf_ife_info*, i32, i8*, i32, i32, i32)* @__add_metainfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__add_metainfo(%struct.tcf_meta_ops* %0, %struct.tcf_ife_info* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcf_meta_ops*, align 8
  %10 = alloca %struct.tcf_ife_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tcf_meta_info.0*, align 8
  %17 = alloca i32, align 4
  store %struct.tcf_meta_ops* %0, %struct.tcf_meta_ops** %9, align 8
  store %struct.tcf_ife_info* %1, %struct.tcf_ife_info** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.tcf_meta_info.0* null, %struct.tcf_meta_info.0** %16, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  br label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @GFP_KERNEL, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call %struct.tcf_meta_info.0* @kzalloc(i32 24, i32 %25)
  store %struct.tcf_meta_info.0* %26, %struct.tcf_meta_info.0** %16, align 8
  %27 = load %struct.tcf_meta_info.0*, %struct.tcf_meta_info.0** %16, align 8
  %28 = icmp ne %struct.tcf_meta_info.0* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %85

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.tcf_meta_info.0*, %struct.tcf_meta_info.0** %16, align 8
  %35 = getelementptr inbounds %struct.tcf_meta_info.0, %struct.tcf_meta_info.0* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %9, align 8
  %37 = load %struct.tcf_meta_info.0*, %struct.tcf_meta_info.0** %16, align 8
  %38 = getelementptr inbounds %struct.tcf_meta_info.0, %struct.tcf_meta_info.0* %37, i32 0, i32 1
  store %struct.tcf_meta_ops* %36, %struct.tcf_meta_ops** %38, align 8
  %39 = load i32, i32* %13, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %32
  %42 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %9, align 8
  %43 = getelementptr inbounds %struct.tcf_meta_ops, %struct.tcf_meta_ops* %42, i32 0, i32 0
  %44 = load i32 (%struct.tcf_meta_info*, i8*, i32)*, i32 (%struct.tcf_meta_info*, i8*, i32)** %43, align 8
  %45 = load %struct.tcf_meta_info.0*, %struct.tcf_meta_info.0** %16, align 8
  %46 = bitcast %struct.tcf_meta_info.0* %45 to %struct.tcf_meta_info*
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  br label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @GFP_KERNEL, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 %44(%struct.tcf_meta_info* %46, i8* %47, i32 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.tcf_meta_info.0*, %struct.tcf_meta_info.0** %16, align 8
  %61 = call i32 @kfree(%struct.tcf_meta_info.0* %60)
  %62 = load i32, i32* %17, align 4
  store i32 %62, i32* %8, align 4
  br label %85

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %10, align 8
  %69 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %68, i32 0, i32 0
  %70 = call i32 @spin_lock_bh(i32* %69)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.tcf_meta_info.0*, %struct.tcf_meta_info.0** %16, align 8
  %73 = getelementptr inbounds %struct.tcf_meta_info.0, %struct.tcf_meta_info.0* %72, i32 0, i32 0
  %74 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %10, align 8
  %75 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %74, i32 0, i32 1
  %76 = call i32 @list_add_tail(i32* %73, i32* %75)
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %10, align 8
  %81 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock_bh(i32* %81)
  br label %83

83:                                               ; preds = %79, %71
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %83, %59, %29
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local %struct.tcf_meta_info.0* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.tcf_meta_info.0*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
