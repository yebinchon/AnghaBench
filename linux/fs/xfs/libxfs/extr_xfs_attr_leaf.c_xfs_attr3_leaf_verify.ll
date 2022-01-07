; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_attr_leafblock*, %struct.xfs_mount* }
%struct.xfs_attr_leafblock = type { i32 }
%struct.xfs_mount = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.xfs_attr3_icleaf_hdr = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.xfs_attr_leaf_entry = type { i32 }

@__this_address = common dso_local global i32* null, align 8
@XFS_ATTR_LEAF_MAPSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xfs_buf*)* @xfs_attr3_leaf_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xfs_attr3_leaf_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca %struct.xfs_attr3_icleaf_hdr, align 8
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca %struct.xfs_attr_leafblock*, align 8
  %7 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  %11 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %11, i32 0, i32 1
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  store %struct.xfs_mount* %13, %struct.xfs_mount** %5, align 8
  %14 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %15 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %14, i32 0, i32 0
  %16 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %15, align 8
  store %struct.xfs_attr_leafblock* %16, %struct.xfs_attr_leafblock** %6, align 8
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %18 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %21 = call i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_4__* %19, %struct.xfs_attr3_icleaf_hdr* %4, %struct.xfs_attr_leafblock* %20)
  %22 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %23 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %24 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %23, i32 0, i32 0
  %25 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %24, align 8
  %26 = call i32* @xfs_da3_blkinfo_verify(%struct.xfs_buf* %22, %struct.xfs_attr_leafblock* %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32*, i32** %10, align 8
  store i32* %30, i32** %2, align 8
  br label %186

31:                                               ; preds = %1
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %33 = call i32 @xfs_log_in_recovery(%struct.xfs_mount* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32*, i32** @__this_address, align 8
  store i32* %40, i32** %2, align 8
  br label %186

41:                                               ; preds = %35, %31
  %42 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %4, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %45 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %43, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32*, i32** @__this_address, align 8
  store i32* %51, i32** %2, align 8
  br label %186

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %4, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %56 = call i64 @xfs_attr3_leaf_hdr_size(%struct.xfs_attr_leafblock* %55)
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32*, i32** @__this_address, align 8
  store i32* %59, i32** %2, align 8
  br label %186

60:                                               ; preds = %52
  %61 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %62 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %61, i32 0, i32 0
  %63 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %62, align 8
  %64 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock* %63)
  store %struct.xfs_attr_leaf_entry* %64, %struct.xfs_attr_leaf_entry** %7, align 8
  %65 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %66 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %4, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %65, i64 %67
  %69 = bitcast %struct.xfs_attr_leaf_entry* %68 to i8*
  %70 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %71 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %70, i32 0, i32 0
  %72 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %71, align 8
  %73 = bitcast %struct.xfs_attr_leafblock* %72 to i8*
  %74 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %4, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = icmp ugt i8* %69, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %60
  %79 = load i32*, i32** @__this_address, align 8
  store i32* %79, i32** %2, align 8
  br label %186

80:                                               ; preds = %60
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %182, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @XFS_ATTR_LEAF_MAPSIZE, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %185

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %4, i32 0, i32 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %95 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %93, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %85
  %101 = load i32*, i32** @__this_address, align 8
  store i32* %101, i32** %2, align 8
  br label %186

102:                                              ; preds = %85
  %103 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %4, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 3
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = load i32*, i32** @__this_address, align 8
  store i32* %113, i32** %2, align 8
  br label %186

114:                                              ; preds = %102
  %115 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %4, i32 0, i32 2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %124 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %122, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %114
  %130 = load i32*, i32** @__this_address, align 8
  store i32* %130, i32** %2, align 8
  br label %186

131:                                              ; preds = %114
  %132 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %4, i32 0, i32 2
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 3
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32*, i32** @__this_address, align 8
  store i32* %142, i32** %2, align 8
  br label %186

143:                                              ; preds = %131
  %144 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %4, i32 0, i32 2
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %4, i32 0, i32 2
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %150, %157
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %4, i32 0, i32 2
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %159, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %143
  %169 = load i32*, i32** @__this_address, align 8
  store i32* %169, i32** %2, align 8
  br label %186

170:                                              ; preds = %143
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %174 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp sgt i64 %172, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = load i32*, i32** @__this_address, align 8
  store i32* %180, i32** %2, align 8
  br label %186

181:                                              ; preds = %170
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %9, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %9, align 4
  br label %81

185:                                              ; preds = %81
  store i32* null, i32** %2, align 8
  br label %186

186:                                              ; preds = %185, %179, %168, %141, %129, %112, %100, %78, %58, %50, %39, %29
  %187 = load i32*, i32** %2, align 8
  ret i32* %187
}

declare dso_local i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_4__*, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr_leafblock*) #1

declare dso_local i32* @xfs_da3_blkinfo_verify(%struct.xfs_buf*, %struct.xfs_attr_leafblock*) #1

declare dso_local i32 @xfs_log_in_recovery(%struct.xfs_mount*) #1

declare dso_local i64 @xfs_attr3_leaf_hdr_size(%struct.xfs_attr_leafblock*) #1

declare dso_local %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
