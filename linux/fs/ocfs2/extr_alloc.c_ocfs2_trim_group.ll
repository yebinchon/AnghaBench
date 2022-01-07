; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_trim_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_trim_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_group_desc = type { i32, i32, i8* }

@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ocfs2_group_desc*, i32, i32, i32, i32)* @ocfs2_trim_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_trim_group(%struct.super_block* %0, %struct.ocfs2_group_desc* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.ocfs2_group_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.ocfs2_group_desc* %1, %struct.ocfs2_group_desc** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %9, align 8
  %19 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %17, align 8
  %21 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %9, align 8
  %22 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @le16_to_cpu(i32 %23)
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %107

28:                                               ; preds = %6
  %29 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %9, align 8
  %30 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le64_to_cpu(i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @trace_ocfs2_trim_group(i64 %32, i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %99, %28
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %100

41:                                               ; preds = %37
  %42 = load i8*, i8** %17, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @ocfs2_find_next_zero_bit(i8* %42, i32 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %100

50:                                               ; preds = %41
  %51 = load i8*, i8** %17, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @ocfs2_find_next_bit(i8* %51, i32 %52, i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load i32, i32* %13, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %50
  %61 = load %struct.super_block*, %struct.super_block** %8, align 8
  %62 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i32 @ocfs2_trim_extent(%struct.super_block* %61, %struct.ocfs2_group_desc* %62, i32 %63, i32 %64, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %100

74:                                               ; preds = %60
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %74, %50
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* @current, align 4
  %84 = call i64 @fatal_signal_pending(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @ERESTARTSYS, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %15, align 4
  br label %100

89:                                               ; preds = %80
  %90 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %9, align 8
  %91 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @le16_to_cpu(i32 %92)
  %94 = load i32, i32* %15, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %100

99:                                               ; preds = %89
  br label %37

100:                                              ; preds = %98, %86, %71, %49, %37
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i32, i32* %15, align 4
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %105, %27
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @trace_ocfs2_trim_group(i64, i32, i32, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_find_next_zero_bit(i8*, i32, i32) #1

declare dso_local i32 @ocfs2_find_next_bit(i8*, i32, i32) #1

declare dso_local i32 @ocfs2_trim_extent(%struct.super_block*, %struct.ocfs2_group_desc*, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
