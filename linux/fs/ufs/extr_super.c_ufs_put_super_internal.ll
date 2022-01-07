; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_put_super_internal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_put_super_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_sb_info = type { i32, i8**, i8*, i64, %struct.ufs_sb_private_info* }
%struct.ufs_sb_private_info = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.ufs_buffer_head = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@UFS_MAX_GROUP_LOADED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ufs_put_super_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_put_super_internal(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ufs_sb_info*, align 8
  %4 = alloca %struct.ufs_sb_private_info*, align 8
  %5 = alloca %struct.ufs_buffer_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = call %struct.ufs_sb_info* @UFS_SB(%struct.super_block* %11)
  store %struct.ufs_sb_info* %12, %struct.ufs_sb_info** %3, align 8
  %13 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %14 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %13, i32 0, i32 4
  %15 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %14, align 8
  store %struct.ufs_sb_private_info* %15, %struct.ufs_sb_private_info** %4, align 8
  %16 = call i32 @UFSD(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.super_block*, %struct.super_block** %2, align 8
  %18 = call i32 @ufs_put_cstotal(%struct.super_block* %17)
  %19 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %20 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %24 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add i32 %22, %25
  %27 = sub i32 %26, 1
  %28 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %29 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = lshr i32 %27, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %33 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %7, align 8
  store i8* %35, i8** %6, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %83, %1
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %89

40:                                               ; preds = %36
  %41 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %42 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %46 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %44, %47
  %49 = load i32, i32* %8, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub i32 %52, %53
  %55 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %56 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul i32 %54, %57
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %51, %40
  %60 = load %struct.super_block*, %struct.super_block** %2, align 8
  %61 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %62 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i32, i32* %9, align 4
  %68 = call %struct.ufs_buffer_head* @ubh_bread(%struct.super_block* %60, i64 %66, i32 %67)
  store %struct.ufs_buffer_head* %68, %struct.ufs_buffer_head** %5, align 8
  %69 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %5, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @ubh_memcpyubh(%struct.ufs_buffer_head* %69, i8* %70, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %7, align 8
  %77 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %5, align 8
  %78 = call i32 @ubh_mark_buffer_uptodate(%struct.ufs_buffer_head* %77, i32 1)
  %79 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %5, align 8
  %80 = call i32 @ubh_mark_buffer_dirty(%struct.ufs_buffer_head* %79)
  %81 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %5, align 8
  %82 = call i32 @ubh_brelse(%struct.ufs_buffer_head* %81)
  br label %83

83:                                               ; preds = %59
  %84 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %85 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %10, align 4
  br label %36

89:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %108, %89
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %93 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load %struct.super_block*, %struct.super_block** %2, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @ufs_put_cylinder(%struct.super_block* %97, i32 %98)
  %100 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %101 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %100, i32 0, i32 1
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @kfree(i8* %106)
  br label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %10, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %90

111:                                              ; preds = %90
  br label %112

112:                                              ; preds = %125, %111
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @UFS_MAX_GROUP_LOADED, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %112
  %117 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %118 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %117, i32 0, i32 1
  %119 = load i8**, i8*** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @kfree(i8* %123)
  br label %125

125:                                              ; preds = %116
  %126 = load i32, i32* %10, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %112

128:                                              ; preds = %112
  store i32 0, i32* %10, align 4
  br label %129

129:                                              ; preds = %144, %128
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %132 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = icmp ult i32 %130, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %129
  %136 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %137 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = call i32 @brelse(i8 zeroext %142)
  br label %144

144:                                              ; preds = %135
  %145 = load i32, i32* %10, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %129

147:                                              ; preds = %129
  %148 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %149 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @kfree(i8* %150)
  %152 = load i8*, i8** %6, align 8
  %153 = call i32 @kfree(i8* %152)
  %154 = call i32 @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ufs_sb_info* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*) #1

declare dso_local i32 @ufs_put_cstotal(%struct.super_block*) #1

declare dso_local %struct.ufs_buffer_head* @ubh_bread(%struct.super_block*, i64, i32) #1

declare dso_local i32 @ubh_memcpyubh(%struct.ufs_buffer_head*, i8*, i32) #1

declare dso_local i32 @ubh_mark_buffer_uptodate(%struct.ufs_buffer_head*, i32) #1

declare dso_local i32 @ubh_mark_buffer_dirty(%struct.ufs_buffer_head*) #1

declare dso_local i32 @ubh_brelse(%struct.ufs_buffer_head*) #1

declare dso_local i32 @ufs_put_cylinder(%struct.super_block*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @brelse(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
