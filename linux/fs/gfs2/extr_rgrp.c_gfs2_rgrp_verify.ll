; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rgrp_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rgrp_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i32, i32, i32, i32, %struct.gfs2_bitmap*, %struct.gfs2_sbd* }
%struct.gfs2_bitmap = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.gfs2_sbd = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"free data mismatch:  %u != %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"used data mismatch:  %u != %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"used metadata mismatch:  %u != %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_rgrp_verify(%struct.gfs2_rgrpd* %0) #0 {
  %2 = alloca %struct.gfs2_rgrpd*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_bitmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %2, align 8
  %10 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %11 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %10, i32 0, i32 5
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  store %struct.gfs2_sbd* %12, %struct.gfs2_sbd** %3, align 8
  store %struct.gfs2_bitmap* null, %struct.gfs2_bitmap** %4, align 8
  %13 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %14 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %17 = call i32 @memset(i32* %16, i32 0, i32 16)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %57, %1
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %18
  %23 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %24 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %23, i32 0, i32 4
  %25 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %25, i64 %27
  store %struct.gfs2_bitmap* %28, %struct.gfs2_bitmap** %4, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %53, %22
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %56

32:                                               ; preds = %29
  %33 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %34 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %4, align 8
  %35 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %4, align 8
  %40 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %4, align 8
  %44 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @gfs2_bitcount(%struct.gfs2_rgrpd* %33, i64 %42, i32 %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %47
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %32
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %29

56:                                               ; preds = %29
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %18

60:                                               ; preds = %18
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %64 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %60
  %68 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %69 = call i64 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %74 = load i32, i32* %73, align 16
  %75 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %76 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @fs_err(%struct.gfs2_sbd* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %71, %67
  br label %133

80:                                               ; preds = %60
  %81 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %82 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %85 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %83, %86
  %88 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %89 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %87, %90
  store i32 %91, i32* %7, align 4
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %80
  %97 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %98 = call i64 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @fs_err(%struct.gfs2_sbd* %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %96
  br label %133

107:                                              ; preds = %80
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %109, %111
  %113 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %114 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %107
  %118 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %119 = call i64 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %124, %126
  %128 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %129 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @fs_err(%struct.gfs2_sbd* %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %121, %117
  br label %133

133:                                              ; preds = %79, %106, %132, %107
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @gfs2_bitcount(%struct.gfs2_rgrpd*, i64, i32, i32) #1

declare dso_local i64 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
