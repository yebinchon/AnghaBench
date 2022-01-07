; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents_status.c_count_rsvd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents_status.c_count_rsvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_status = type { i64 }
%struct.rsvd_count = type { i32, i32, i64, i64, i64, i64 }
%struct.ext4_sb_info = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64, i64, %struct.extent_status*, %struct.rsvd_count*)* @count_rsvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @count_rsvd(%struct.inode* %0, i64 %1, i64 %2, %struct.extent_status* %3, %struct.rsvd_count* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.extent_status*, align 8
  %10 = alloca %struct.rsvd_count*, align 8
  %11 = alloca %struct.ext4_sb_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.extent_status* %3, %struct.extent_status** %9, align 8
  store %struct.rsvd_count* %4, %struct.rsvd_count** %10, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ext4_sb_info* @EXT4_SB(i32 %17)
  store %struct.ext4_sb_info* %18, %struct.ext4_sb_info** %11, align 8
  %19 = load %struct.extent_status*, %struct.extent_status** %9, align 8
  %20 = call i32 @ext4_es_is_delonly(%struct.extent_status* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  br label %173

23:                                               ; preds = %5
  %24 = load i64, i64* %8, align 8
  %25 = icmp sle i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %29 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = load i64, i64* %8, align 8
  %34 = trunc i64 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = load %struct.rsvd_count*, %struct.rsvd_count** %10, align 8
  %37 = getelementptr inbounds %struct.rsvd_count, %struct.rsvd_count* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  br label %173

40:                                               ; preds = %23
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.extent_status*, %struct.extent_status** %9, align 8
  %43 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.extent_status*, %struct.extent_status** %9, align 8
  %48 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  br label %52

50:                                               ; preds = %40
  %51 = load i64, i64* %7, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %49, %46 ], [ %51, %50 ]
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add nsw i64 %54, %55
  %57 = sub nsw i64 %56, 1
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.extent_status*, %struct.extent_status** %9, align 8
  %60 = call i64 @ext4_es_end(%struct.extent_status* %59)
  %61 = icmp sgt i64 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load %struct.extent_status*, %struct.extent_status** %9, align 8
  %64 = call i64 @ext4_es_end(%struct.extent_status* %63)
  br label %67

65:                                               ; preds = %52
  %66 = load i64, i64* %13, align 8
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i64 [ %64, %62 ], [ %66, %65 ]
  store i64 %68, i64* %13, align 8
  %69 = load %struct.rsvd_count*, %struct.rsvd_count** %10, align 8
  %70 = getelementptr inbounds %struct.rsvd_count, %struct.rsvd_count* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.rsvd_count*, %struct.rsvd_count** %10, align 8
  %76 = getelementptr inbounds %struct.rsvd_count, %struct.rsvd_count* %75, i32 0, i32 5
  store i64 %74, i64* %76, align 8
  %77 = load %struct.rsvd_count*, %struct.rsvd_count** %10, align 8
  %78 = getelementptr inbounds %struct.rsvd_count, %struct.rsvd_count* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %73, %67
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.rsvd_count*, %struct.rsvd_count** %10, align 8
  %82 = getelementptr inbounds %struct.rsvd_count, %struct.rsvd_count* %81, i32 0, i32 4
  store i64 %80, i64* %82, align 8
  %83 = load %struct.rsvd_count*, %struct.rsvd_count** %10, align 8
  %84 = getelementptr inbounds %struct.rsvd_count, %struct.rsvd_count* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %79
  %88 = load %struct.rsvd_count*, %struct.rsvd_count** %10, align 8
  %89 = getelementptr inbounds %struct.rsvd_count, %struct.rsvd_count* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %91, i64 %92)
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %87
  %96 = load %struct.rsvd_count*, %struct.rsvd_count** %10, align 8
  %97 = getelementptr inbounds %struct.rsvd_count, %struct.rsvd_count* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = load %struct.rsvd_count*, %struct.rsvd_count** %10, align 8
  %101 = getelementptr inbounds %struct.rsvd_count, %struct.rsvd_count* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %95, %87, %79
  %103 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %104 = load i64, i64* %12, align 8
  %105 = call i64 @EXT4_LBLK_COFF(%struct.ext4_sb_info* %103, i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %102
  %108 = load i64, i64* %13, align 8
  %109 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %110 = load i64, i64* %12, align 8
  %111 = call i64 @EXT4_LBLK_CFILL(%struct.ext4_sb_info* %109, i64 %110)
  %112 = icmp sge i64 %108, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  %114 = load %struct.rsvd_count*, %struct.rsvd_count** %10, align 8
  %115 = getelementptr inbounds %struct.rsvd_count, %struct.rsvd_count* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %115, align 8
  %118 = load %struct.rsvd_count*, %struct.rsvd_count** %10, align 8
  %119 = getelementptr inbounds %struct.rsvd_count, %struct.rsvd_count* %118, i32 0, i32 1
  store i32 0, i32* %119, align 4
  %120 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %121 = load i64, i64* %12, align 8
  %122 = call i64 @EXT4_LBLK_CFILL(%struct.ext4_sb_info* %120, i64 %121)
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %12, align 8
  br label %124

124:                                              ; preds = %113, %107
  br label %125

125:                                              ; preds = %124, %102
  %126 = load i64, i64* %12, align 8
  %127 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %128 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %126, %130
  %132 = sub nsw i64 %131, 1
  %133 = load i64, i64* %13, align 8
  %134 = icmp sle i64 %132, %133
  br i1 %134, label %135, label %156

135:                                              ; preds = %125
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* %12, align 8
  %138 = sub nsw i64 %136, %137
  %139 = add nsw i64 %138, 1
  %140 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %141 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = ashr i64 %139, %142
  store i64 %143, i64* %14, align 8
  %144 = load i64, i64* %14, align 8
  %145 = load %struct.rsvd_count*, %struct.rsvd_count** %10, align 8
  %146 = getelementptr inbounds %struct.rsvd_count, %struct.rsvd_count* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, %144
  store i64 %148, i64* %146, align 8
  %149 = load i64, i64* %14, align 8
  %150 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %151 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = shl i64 %149, %152
  %154 = load i64, i64* %12, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %12, align 8
  br label %156

156:                                              ; preds = %135, %125
  %157 = load %struct.rsvd_count*, %struct.rsvd_count** %10, align 8
  %158 = getelementptr inbounds %struct.rsvd_count, %struct.rsvd_count* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %173, label %161

161:                                              ; preds = %156
  %162 = load i64, i64* %12, align 8
  %163 = load i64, i64* %13, align 8
  %164 = icmp sle i64 %162, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %161
  %166 = load %struct.rsvd_count*, %struct.rsvd_count** %10, align 8
  %167 = getelementptr inbounds %struct.rsvd_count, %struct.rsvd_count* %166, i32 0, i32 1
  store i32 1, i32* %167, align 4
  %168 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %169 = load i64, i64* %12, align 8
  %170 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %168, i64 %169)
  %171 = load %struct.rsvd_count*, %struct.rsvd_count** %10, align 8
  %172 = getelementptr inbounds %struct.rsvd_count, %struct.rsvd_count* %171, i32 0, i32 2
  store i64 %170, i64* %172, align 8
  br label %173

173:                                              ; preds = %22, %32, %165, %161, %156
  ret void
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i32 @ext4_es_is_delonly(%struct.extent_status*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ext4_es_end(%struct.extent_status*) #1

declare dso_local i64 @EXT4_B2C(%struct.ext4_sb_info*, i64) #1

declare dso_local i64 @EXT4_LBLK_COFF(%struct.ext4_sb_info*, i64) #1

declare dso_local i64 @EXT4_LBLK_CFILL(%struct.ext4_sb_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
