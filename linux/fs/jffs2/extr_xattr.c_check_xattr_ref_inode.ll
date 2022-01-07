; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_check_xattr_ref_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_check_xattr_ref_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_inode_cache = type { i32, %struct.jffs2_xattr_ref* }
%struct.jffs2_xattr_ref = type { i64, %struct.jffs2_xattr_ref*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@INO_FLAGS_XATTR_CHECKED = common dso_local global i32 0, align 4
@JFFS2_XFLAGS_BIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_inode_cache*)* @check_xattr_ref_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_xattr_ref_inode(%struct.jffs2_sb_info* %0, %struct.jffs2_inode_cache* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca %struct.jffs2_inode_cache*, align 8
  %6 = alloca %struct.jffs2_xattr_ref*, align 8
  %7 = alloca %struct.jffs2_xattr_ref*, align 8
  %8 = alloca %struct.jffs2_xattr_ref**, align 8
  %9 = alloca %struct.jffs2_xattr_ref**, align 8
  %10 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store %struct.jffs2_inode_cache* %1, %struct.jffs2_inode_cache** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %5, align 8
  %12 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @INO_FLAGS_XATTR_CHECKED, align 4
  %15 = and i32 %13, %14
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %201

19:                                               ; preds = %2
  %20 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %21 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %20, i32 0, i32 0
  %22 = call i32 @down_write(i32* %21)
  br label %23

23:                                               ; preds = %175, %109, %50, %19
  store i32 0, i32* %10, align 4
  %24 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %5, align 8
  %25 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %24, i32 0, i32 1
  %26 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %25, align 8
  store %struct.jffs2_xattr_ref* %26, %struct.jffs2_xattr_ref** %6, align 8
  %27 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %5, align 8
  %28 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %27, i32 0, i32 1
  store %struct.jffs2_xattr_ref** %28, %struct.jffs2_xattr_ref*** %8, align 8
  br label %29

29:                                               ; preds = %184, %23
  %30 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %31 = icmp ne %struct.jffs2_xattr_ref* %30, null
  br i1 %31, label %32, label %190

32:                                               ; preds = %29
  %33 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %34 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %67, label %39

39:                                               ; preds = %32
  %40 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %41 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %42 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @load_xattr_datum(%struct.jffs2_sb_info* %40, %struct.TYPE_2__* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sgt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %39
  %51 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %52 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %51, i32 0, i32 1
  %53 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %52, align 8
  %54 = load %struct.jffs2_xattr_ref**, %struct.jffs2_xattr_ref*** %8, align 8
  store %struct.jffs2_xattr_ref* %53, %struct.jffs2_xattr_ref** %54, align 8
  %55 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %56 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %57 = call i32 @delete_xattr_ref(%struct.jffs2_sb_info* %55, %struct.jffs2_xattr_ref* %56)
  br label %23

58:                                               ; preds = %39
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %196

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66, %32
  %68 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %69 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %68, i32 0, i32 1
  %70 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %69, align 8
  store %struct.jffs2_xattr_ref* %70, %struct.jffs2_xattr_ref** %7, align 8
  %71 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %72 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %71, i32 0, i32 1
  store %struct.jffs2_xattr_ref** %72, %struct.jffs2_xattr_ref*** %9, align 8
  br label %73

73:                                               ; preds = %177, %67
  %74 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %7, align 8
  %75 = icmp ne %struct.jffs2_xattr_ref* %74, null
  br i1 %75, label %76, label %183

76:                                               ; preds = %73
  %77 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %7, align 8
  %78 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %126, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @JFFS2_XFLAGS_BIND, align 4
  %85 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %86 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %84
  store i32 %90, i32* %88, align 4
  %91 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %92 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %7, align 8
  %93 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = call i32 @load_xattr_datum(%struct.jffs2_sb_info* %91, %struct.TYPE_2__* %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* @JFFS2_XFLAGS_BIND, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %99 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %97
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp sgt i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %83
  %110 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %7, align 8
  %111 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %110, i32 0, i32 1
  %112 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %111, align 8
  %113 = load %struct.jffs2_xattr_ref**, %struct.jffs2_xattr_ref*** %9, align 8
  store %struct.jffs2_xattr_ref* %112, %struct.jffs2_xattr_ref** %113, align 8
  %114 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %115 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %7, align 8
  %116 = call i32 @delete_xattr_ref(%struct.jffs2_sb_info* %114, %struct.jffs2_xattr_ref* %115)
  br label %23

117:                                              ; preds = %83
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %196

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125, %76
  %127 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %128 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %7, align 8
  %133 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %132, i32 0, i32 2
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %131, %136
  br i1 %137, label %138, label %176

138:                                              ; preds = %126
  %139 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %140 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %7, align 8
  %145 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %144, i32 0, i32 2
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @strcmp(i32 %143, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %176, label %151

151:                                              ; preds = %138
  %152 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %153 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %7, align 8
  %156 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %154, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %151
  %160 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %7, align 8
  %161 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %160, i32 0, i32 1
  %162 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %161, align 8
  %163 = load %struct.jffs2_xattr_ref**, %struct.jffs2_xattr_ref*** %9, align 8
  store %struct.jffs2_xattr_ref* %162, %struct.jffs2_xattr_ref** %163, align 8
  %164 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %165 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %7, align 8
  %166 = call i32 @delete_xattr_ref(%struct.jffs2_sb_info* %164, %struct.jffs2_xattr_ref* %165)
  br label %175

167:                                              ; preds = %151
  %168 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %169 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %168, i32 0, i32 1
  %170 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %169, align 8
  %171 = load %struct.jffs2_xattr_ref**, %struct.jffs2_xattr_ref*** %8, align 8
  store %struct.jffs2_xattr_ref* %170, %struct.jffs2_xattr_ref** %171, align 8
  %172 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %173 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %174 = call i32 @delete_xattr_ref(%struct.jffs2_sb_info* %172, %struct.jffs2_xattr_ref* %173)
  br label %175

175:                                              ; preds = %167, %159
  br label %23

176:                                              ; preds = %138, %126
  br label %177

177:                                              ; preds = %176
  %178 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %7, align 8
  %179 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %178, i32 0, i32 1
  store %struct.jffs2_xattr_ref** %179, %struct.jffs2_xattr_ref*** %9, align 8
  %180 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %7, align 8
  %181 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %180, i32 0, i32 1
  %182 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %181, align 8
  store %struct.jffs2_xattr_ref* %182, %struct.jffs2_xattr_ref** %7, align 8
  br label %73

183:                                              ; preds = %73
  br label %184

184:                                              ; preds = %183
  %185 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %186 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %185, i32 0, i32 1
  store %struct.jffs2_xattr_ref** %186, %struct.jffs2_xattr_ref*** %8, align 8
  %187 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %6, align 8
  %188 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %187, i32 0, i32 1
  %189 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %188, align 8
  store %struct.jffs2_xattr_ref* %189, %struct.jffs2_xattr_ref** %6, align 8
  br label %29

190:                                              ; preds = %29
  %191 = load i32, i32* @INO_FLAGS_XATTR_CHECKED, align 4
  %192 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %5, align 8
  %193 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %190, %123, %64
  %197 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %198 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %197, i32 0, i32 0
  %199 = call i32 @up_write(i32* %198)
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %196, %18
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @load_xattr_datum(%struct.jffs2_sb_info*, %struct.TYPE_2__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @delete_xattr_ref(%struct.jffs2_sb_info*, %struct.jffs2_xattr_ref*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
