; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__dedup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__dedup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_ext = type { i32 }
%struct.btf_dedup_opts = type { i32 }
%struct.btf_dedup = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"btf_dedup_new failed: %ld\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"btf_dedup_strings failed:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"btf_dedup_prim_types failed:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"btf_dedup_struct_types failed:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"btf_dedup_ref_types failed:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"btf_dedup_compact_types failed:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"btf_dedup_remap_types failed:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btf__dedup(%struct.btf* %0, %struct.btf_ext* %1, %struct.btf_dedup_opts* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf*, align 8
  %6 = alloca %struct.btf_ext*, align 8
  %7 = alloca %struct.btf_dedup_opts*, align 8
  %8 = alloca %struct.btf_dedup*, align 8
  %9 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %5, align 8
  store %struct.btf_ext* %1, %struct.btf_ext** %6, align 8
  store %struct.btf_dedup_opts* %2, %struct.btf_dedup_opts** %7, align 8
  %10 = load %struct.btf*, %struct.btf** %5, align 8
  %11 = load %struct.btf_ext*, %struct.btf_ext** %6, align 8
  %12 = load %struct.btf_dedup_opts*, %struct.btf_dedup_opts** %7, align 8
  %13 = call %struct.btf_dedup* @btf_dedup_new(%struct.btf* %10, %struct.btf_ext* %11, %struct.btf_dedup_opts* %12)
  store %struct.btf_dedup* %13, %struct.btf_dedup** %8, align 8
  %14 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %15 = call i64 @IS_ERR(%struct.btf_dedup* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.btf_dedup* %18)
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %76

23:                                               ; preds = %3
  %24 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %25 = call i32 @btf_dedup_strings(%struct.btf_dedup* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %72

31:                                               ; preds = %23
  %32 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %33 = call i32 @btf_dedup_prim_types(%struct.btf_dedup* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %72

39:                                               ; preds = %31
  %40 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %41 = call i32 @btf_dedup_struct_types(%struct.btf_dedup* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  br label %72

47:                                               ; preds = %39
  %48 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %49 = call i32 @btf_dedup_ref_types(%struct.btf_dedup* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  br label %72

55:                                               ; preds = %47
  %56 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %57 = call i32 @btf_dedup_compact_types(%struct.btf_dedup* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  br label %72

63:                                               ; preds = %55
  %64 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %65 = call i32 @btf_dedup_remap_types(%struct.btf_dedup* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %69)
  br label %72

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %68, %60, %52, %44, %36, %28
  %73 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %74 = call i32 @btf_dedup_free(%struct.btf_dedup* %73)
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.btf_dedup* @btf_dedup_new(%struct.btf*, %struct.btf_ext*, %struct.btf_dedup_opts*) #1

declare dso_local i64 @IS_ERR(%struct.btf_dedup*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.btf_dedup*) #1

declare dso_local i32 @btf_dedup_strings(%struct.btf_dedup*) #1

declare dso_local i32 @btf_dedup_prim_types(%struct.btf_dedup*) #1

declare dso_local i32 @btf_dedup_struct_types(%struct.btf_dedup*) #1

declare dso_local i32 @btf_dedup_ref_types(%struct.btf_dedup*) #1

declare dso_local i32 @btf_dedup_compact_types(%struct.btf_dedup*) #1

declare dso_local i32 @btf_dedup_remap_types(%struct.btf_dedup*) #1

declare dso_local i32 @btf_dedup_free(%struct.btf_dedup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
