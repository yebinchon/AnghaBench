; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_balloc.c_ufs_bitmap_search.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_balloc.c_ufs_bitmap_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_cg_private_info = type { i32, i32, i32 }
%struct.ufs_sb_private_info = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@ufs_bitmap_search.mask_arr = internal constant [9 x i32] [i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023], align 16
@ufs_bitmap_search.want_arr = internal constant [9 x i32] [i32 0, i32 2, i32 6, i32 14, i32 30, i32 62, i32 126, i32 254, i32 510], align 16
@.str = private unnamed_addr constant [35 x i8] c"ENTER, cg %u, goal %llu, count %u\0A\00", align 1
@ufs_fragtable_8fpb = common dso_local global i32 0, align 4
@ufs_fragtable_other = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ufs_bitmap_search\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"bitmap corrupted on cg %u, start %u, length %u, count %u, freeoff %u\0A\00", align 1
@INVBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"EXIT, result %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"block not in map on cg %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"EXIT (FAILED)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ufs_cg_private_info*, i32, i32)* @ufs_bitmap_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_bitmap_search(%struct.super_block* %0, %struct.ufs_cg_private_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ufs_cg_private_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ufs_sb_private_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.ufs_cg_private_info* %1, %struct.ufs_cg_private_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.super_block*, %struct.super_block** %6, align 8
  %21 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %22, align 8
  store %struct.ufs_sb_private_info* %23, %struct.ufs_sb_private_info** %10, align 8
  %24 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %25 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = load i32, i32* %9, align 4
  %30 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %4
  %34 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ufs_dtogd(%struct.ufs_sb_private_info* %34, i32 %35)
  %37 = ashr i32 %36, 3
  store i32 %37, i32* %11, align 4
  br label %43

38:                                               ; preds = %4
  %39 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %40 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 3
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %45 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 7
  %48 = ashr i32 %47, 3
  %49 = load i32, i32* %11, align 4
  %50 = sub i32 %48, %49
  store i32 %50, i32* %12, align 4
  %51 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %52 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %53 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %52)
  %54 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %55 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %56, %57
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %61 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 8
  br i1 %63, label %64, label %66

64:                                               ; preds = %43
  %65 = load i32, i32* @ufs_fragtable_8fpb, align 4
  br label %68

66:                                               ; preds = %43
  %67 = load i32, i32* @ufs_fragtable_other, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load i32, i32* %9, align 4
  %71 = sub i32 %70, 1
  %72 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %73 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 7
  %76 = add i32 %71, %75
  %77 = shl i32 1, %76
  %78 = call i32 @ubh_scanc(%struct.ufs_sb_private_info* %51, i32 %53, i32 %58, i32 %59, i32 %69, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %126

81:                                               ; preds = %68
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %12, align 4
  %84 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %85 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %86 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %85)
  %87 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %88 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %92 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 8
  br i1 %94, label %95, label %97

95:                                               ; preds = %81
  %96 = load i32, i32* @ufs_fragtable_8fpb, align 4
  br label %99

97:                                               ; preds = %81
  %98 = load i32, i32* @ufs_fragtable_other, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = load i32, i32* %9, align 4
  %102 = sub i32 %101, 1
  %103 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %104 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 7
  %107 = add i32 %102, %106
  %108 = shl i32 1, %107
  %109 = call i32 @ubh_scanc(%struct.ufs_sb_private_info* %84, i32 %86, i32 %89, i32 %90, i32 %100, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %99
  %113 = load %struct.super_block*, %struct.super_block** %6, align 8
  %114 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %115 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %121 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (%struct.super_block*, i8*, i8*, i32, ...) @ufs_error(%struct.super_block* %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %117, i32 %118, i32 %119, i32 %122)
  %124 = load i32, i32* @INVBLOCK, align 4
  store i32 %124, i32* %5, align 4
  br label %204

125:                                              ; preds = %99
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %125, %68
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %12, align 4
  %129 = add i32 %127, %128
  %130 = load i32, i32* %13, align 4
  %131 = sub i32 %129, %130
  %132 = shl i32 %131, 3
  store i32 %132, i32* %19, align 4
  %133 = load i32, i32* %19, align 4
  %134 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %135 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 8
  store i32 %137, i32* %18, align 4
  br label %138

138:                                              ; preds = %190, %126
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %18, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %142, label %196

142:                                              ; preds = %138
  %143 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %144 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %143)
  %145 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %146 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %19, align 4
  %149 = call i32 @ubh_blkmap(i32 %144, i32 %147, i32 %148)
  store i32 %149, i32* %16, align 4
  %150 = load i32, i32* %16, align 4
  %151 = shl i32 %150, 1
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %9, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [9 x i32], [9 x i32]* @ufs_bitmap_search.mask_arr, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %9, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [9 x i32], [9 x i32]* @ufs_bitmap_search.want_arr, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %160

160:                                              ; preds = %186, %142
  %161 = load i32, i32* %14, align 4
  %162 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %163 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %9, align 4
  %166 = sub i32 %164, %165
  %167 = icmp ule i32 %161, %166
  br i1 %167, label %168, label %189

168:                                              ; preds = %160
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %17, align 4
  %171 = and i32 %169, %170
  %172 = load i32, i32* %15, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %168
  %175 = load i32, i32* %19, align 4
  %176 = sext i32 %175 to i64
  %177 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %176)
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* %14, align 4
  %180 = add i32 %178, %179
  store i32 %180, i32* %5, align 4
  br label %204

181:                                              ; preds = %168
  %182 = load i32, i32* %17, align 4
  %183 = shl i32 %182, 1
  store i32 %183, i32* %17, align 4
  %184 = load i32, i32* %15, align 4
  %185 = shl i32 %184, 1
  store i32 %185, i32* %15, align 4
  br label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %14, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %14, align 4
  br label %160

189:                                              ; preds = %160
  br label %190

190:                                              ; preds = %189
  %191 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %192 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %19, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %19, align 4
  br label %138

196:                                              ; preds = %138
  %197 = load %struct.super_block*, %struct.super_block** %6, align 8
  %198 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %199 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (%struct.super_block*, i8*, i8*, i32, ...) @ufs_error(%struct.super_block* %197, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %200)
  %202 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %203 = load i32, i32* @INVBLOCK, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %196, %174, %112
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*, ...) #1

declare dso_local i32 @ufs_dtogd(%struct.ufs_sb_private_info*, i32) #1

declare dso_local i32 @ubh_scanc(%struct.ufs_sb_private_info*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @UCPI_UBH(%struct.ufs_cg_private_info*) #1

declare dso_local i32 @ufs_error(%struct.super_block*, i8*, i8*, i32, ...) #1

declare dso_local i32 @ubh_blkmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
