; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_find_group_other.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_find_group_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*, i32*, i32)* @find_group_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_group_other(%struct.super_block* %0, %struct.inode* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_group_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call i32 @ext4_get_groups_count(%struct.super_block* %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = call i32 @EXT4_SB(%struct.super_block* %23)
  %25 = call i32 @ext4_flex_bg_size(i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %98

28:                                               ; preds = %4
  store i32 0, i32* %16, align 4
  br label %29

29:                                               ; preds = %76, %28
  %30 = load i32, i32* %15, align 4
  %31 = sub nsw i32 %30, 1
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %41, %29
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %64, %43
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load %struct.super_block*, %struct.super_block** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %50, i32 %51, i32* null)
  store %struct.ext4_group_desc* %52, %struct.ext4_group_desc** %14, align 8
  %53 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %14, align 8
  %54 = icmp ne %struct.ext4_group_desc* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.super_block*, %struct.super_block** %6, align 8
  %57 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %14, align 8
  %58 = call i64 @ext4_free_inodes_count(%struct.super_block* %56, %struct.ext4_group_desc* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %5, align 4
  br label %201

63:                                               ; preds = %55, %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %45

67:                                               ; preds = %45
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %67
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  store i32 1, i32* %16, align 4
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %10, align 4
  br label %29

81:                                               ; preds = %70, %67
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32*, i32** %8, align 8
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %90, %81
  %93 = load %struct.super_block*, %struct.super_block** %6, align 8
  %94 = load %struct.inode*, %struct.inode** %7, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @find_group_orlov(%struct.super_block* %93, %struct.inode* %94, i32* %95, i32 %96, i32* null)
  store i32 %97, i32* %5, align 4
  br label %201

98:                                               ; preds = %4
  %99 = load i32, i32* %10, align 4
  %100 = load i32*, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.super_block*, %struct.super_block** %6, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %101, i32 %103, i32* null)
  store %struct.ext4_group_desc* %104, %struct.ext4_group_desc** %14, align 8
  %105 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %14, align 8
  %106 = icmp ne %struct.ext4_group_desc* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %98
  %108 = load %struct.super_block*, %struct.super_block** %6, align 8
  %109 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %14, align 8
  %110 = call i64 @ext4_free_inodes_count(%struct.super_block* %108, %struct.ext4_group_desc* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.super_block*, %struct.super_block** %6, align 8
  %114 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %14, align 8
  %115 = call i64 @ext4_free_group_clusters(%struct.super_block* %113, %struct.ext4_group_desc* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %201

118:                                              ; preds = %112, %107, %98
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.inode*, %struct.inode** %7, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %120, %123
  %125 = load i32, i32* %13, align 4
  %126 = srem i32 %124, %125
  %127 = load i32*, i32** %8, align 8
  store i32 %126, i32* %127, align 4
  store i32 1, i32* %11, align 4
  br label %128

128:                                              ; preds = %165, %118
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %168

132:                                              ; preds = %128
  %133 = load i32, i32* %11, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, %133
  store i32 %136, i32* %134, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load i32, i32* %13, align 4
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, %142
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %141, %132
  %147 = load %struct.super_block*, %struct.super_block** %6, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %148, align 4
  %150 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %147, i32 %149, i32* null)
  store %struct.ext4_group_desc* %150, %struct.ext4_group_desc** %14, align 8
  %151 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %14, align 8
  %152 = icmp ne %struct.ext4_group_desc* %151, null
  br i1 %152, label %153, label %164

153:                                              ; preds = %146
  %154 = load %struct.super_block*, %struct.super_block** %6, align 8
  %155 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %14, align 8
  %156 = call i64 @ext4_free_inodes_count(%struct.super_block* %154, %struct.ext4_group_desc* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load %struct.super_block*, %struct.super_block** %6, align 8
  %160 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %14, align 8
  %161 = call i64 @ext4_free_group_clusters(%struct.super_block* %159, %struct.ext4_group_desc* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  store i32 0, i32* %5, align 4
  br label %201

164:                                              ; preds = %158, %153, %146
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %11, align 4
  %167 = shl i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %128

168:                                              ; preds = %128
  %169 = load i32, i32* %10, align 4
  %170 = load i32*, i32** %8, align 8
  store i32 %169, i32* %170, align 4
  store i32 0, i32* %11, align 4
  br label %171

171:                                              ; preds = %197, %168
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %200

175:                                              ; preds = %171
  %176 = load i32*, i32** %8, align 8
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp sge i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = load i32*, i32** %8, align 8
  store i32 0, i32* %182, align 4
  br label %183

183:                                              ; preds = %181, %175
  %184 = load %struct.super_block*, %struct.super_block** %6, align 8
  %185 = load i32*, i32** %8, align 8
  %186 = load i32, i32* %185, align 4
  %187 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %184, i32 %186, i32* null)
  store %struct.ext4_group_desc* %187, %struct.ext4_group_desc** %14, align 8
  %188 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %14, align 8
  %189 = icmp ne %struct.ext4_group_desc* %188, null
  br i1 %189, label %190, label %196

190:                                              ; preds = %183
  %191 = load %struct.super_block*, %struct.super_block** %6, align 8
  %192 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %14, align 8
  %193 = call i64 @ext4_free_inodes_count(%struct.super_block* %191, %struct.ext4_group_desc* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  store i32 0, i32* %5, align 4
  br label %201

196:                                              ; preds = %190, %183
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %11, align 4
  br label %171

200:                                              ; preds = %171
  store i32 -1, i32* %5, align 4
  br label %201

201:                                              ; preds = %200, %195, %163, %117, %92, %60
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local i32 @ext4_flex_bg_size(i32) #1

declare dso_local i32 @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i64 @ext4_free_inodes_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @find_group_orlov(%struct.super_block*, %struct.inode*, i32*, i32, i32*) #1

declare dso_local i64 @ext4_free_group_clusters(%struct.super_block*, %struct.ext4_group_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
