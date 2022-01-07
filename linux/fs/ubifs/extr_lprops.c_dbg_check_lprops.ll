; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_dbg_check_lprops.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_dbg_check_lprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.TYPE_4__, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ubifs_lp_stats = type { i64, i64, i64, i64, i64, i64, i64 }

@scan_check_cb = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bad overall accounting\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"calculated: empty_lebs %d, idx_lebs %d, total_free %lld, total_dirty %lld, total_used %lld\00", align 1
@.str.2 = private unnamed_addr constant [97 x i8] c"read from lprops: empty_lebs %d, idx_lebs %d, total_free %lld, total_dirty %lld, total_used %lld\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"bad dead/dark space accounting\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"calculated: total_dead %lld, total_dark %lld\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"read from lprops: total_dead %lld, total_dark %lld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_check_lprops(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_lp_stats, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = call i32 @dbg_is_chk_lprops(%struct.ubifs_info* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %177

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @ubifs_wbuf_sync(i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %177

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %12

35:                                               ; preds = %12
  %36 = call i32 @memset(%struct.ubifs_lp_stats* %6, i32 0, i32 56)
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 1
  %45 = load i64, i64* @scan_check_cb, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @ubifs_lpt_scan_nolock(%struct.ubifs_info* %37, i32 %40, i64 %44, i32 %46, %struct.ubifs_lp_stats* %6)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %35
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @ENOSPC, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %175

56:                                               ; preds = %50, %35
  %57 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %6, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %58, %62
  br i1 %63, label %96, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %6, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %68 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %96, label %72

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %6, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %74, %78
  br i1 %79, label %96, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %6, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %84 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %82, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %6, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %92 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %90, %94
  br i1 %95, label %96, label %135

96:                                               ; preds = %88, %80, %72, %64, %56
  %97 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %98 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %100 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %6, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %6, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %6, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %6, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %6, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %99, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i64 %101, i64 %103, i64 %105, i64 %107, i64 %109)
  %111 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %113 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %117 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %121 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %125 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %129 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %111, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i64 %115, i64 %119, i64 %123, i64 %127, i64 %131)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %175

135:                                              ; preds = %88
  %136 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %6, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %139 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %137, %141
  br i1 %142, label %151, label %143

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %6, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %147 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %145, %149
  br i1 %150, label %151, label %172

151:                                              ; preds = %143, %135
  %152 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %153 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %152, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %154 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %155 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %6, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %6, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %154, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %156, i64 %158)
  %160 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %161 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %162 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %166 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 6
  %168 = load i64, i64* %167, align 8
  %169 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %160, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i64 %164, i64 %168)
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %5, align 4
  br label %175

172:                                              ; preds = %143
  %173 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %174 = call i32 @dbg_check_cats(%struct.ubifs_info* %173)
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %172, %151, %96, %55
  %176 = load i32, i32* %5, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %175, %29, %10
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @dbg_is_chk_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_wbuf_sync(i32*) #1

declare dso_local i32 @memset(%struct.ubifs_lp_stats*, i32, i32) #1

declare dso_local i32 @ubifs_lpt_scan_nolock(%struct.ubifs_info*, i32, i64, i32, %struct.ubifs_lp_stats*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, ...) #1

declare dso_local i32 @dbg_check_cats(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
