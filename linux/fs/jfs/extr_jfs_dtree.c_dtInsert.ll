; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtInsert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.component_name = type { i32 }
%struct.btstack = type { i32 }
%struct.metapage = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i64 }
%struct.dtsplit = type { i32, i32, %struct.TYPE_12__*, %struct.component_name*, %struct.metapage* }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.inode*, i32 }
%struct.dt_lock = type { i64, i64, %struct.lv* }
%struct.lv = type { i32, i64 }
%struct.tlock = type { i32 }
%struct.TYPE_13__ = type { i64 }

@DIREND = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@tlckDTREE = common dso_local global i32 0, align 4
@tlckENTRY = common dso_local global i32 0, align 4
@BT_ROOT = common dso_local global i32 0, align 4
@L2DTSLOTSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtInsert(i32 %0, %struct.inode* %1, %struct.component_name* %2, i32* %3, %struct.btstack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.component_name*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.btstack*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.metapage*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dtsplit, align 8
  %18 = alloca %struct.TYPE_12__, align 8
  %19 = alloca %struct.dt_lock*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.tlock*, align 8
  %22 = alloca %struct.lv*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.component_name* %2, %struct.component_name** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.btstack* %4, %struct.btstack** %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = load %struct.btstack*, %struct.btstack** %11, align 8
  %25 = getelementptr inbounds %struct.btstack, %struct.btstack* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.metapage*, %struct.metapage** %13, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %30 = load i32, i32* %16, align 4
  %31 = call i32 @DT_GETSEARCH(%struct.inode* %23, i32 %26, i32 %27, %struct.metapage* %28, %struct.TYPE_11__* %29, i32 %30)
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = call i64 @DO_INDEX(%struct.inode* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %5
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = call %struct.TYPE_13__* @JFS_IP(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DIREND, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.metapage*, %struct.metapage** %13, align 8
  %44 = call i32 @DT_PUTPAGE(%struct.metapage* %43)
  %45 = load i32, i32* @EMLINK, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %185

47:                                               ; preds = %35
  %48 = load %struct.component_name*, %struct.component_name** %9, align 8
  %49 = getelementptr inbounds %struct.component_name, %struct.component_name* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @NDTLEAF(i32 %50)
  store i32 %51, i32* %20, align 4
  %52 = load i32, i32* %7, align 4
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store %struct.inode* %55, %struct.inode** %57, align 8
  br label %65

58:                                               ; preds = %5
  %59 = load %struct.component_name*, %struct.component_name** %9, align 8
  %60 = getelementptr inbounds %struct.component_name, %struct.component_name* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @NDTLEAF_LEGACY(i32 %61)
  store i32 %62, i32* %20, align 4
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store %struct.inode* null, %struct.inode** %64, align 8
  br label %65

65:                                               ; preds = %58, %47
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %20, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %70, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %65
  %77 = load %struct.metapage*, %struct.metapage** %13, align 8
  %78 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %17, i32 0, i32 4
  store %struct.metapage* %77, %struct.metapage** %78, align 8
  %79 = load i32, i32* %16, align 4
  %80 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %17, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* %20, align 4
  %82 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %17, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load %struct.component_name*, %struct.component_name** %9, align 8
  %84 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %17, i32 0, i32 3
  store %struct.component_name* %83, %struct.component_name** %84, align 8
  %85 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %17, i32 0, i32 2
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %85, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = load %struct.btstack*, %struct.btstack** %11, align 8
  %89 = call i32 @dtSplitUp(i32 %86, %struct.inode* %87, %struct.dtsplit* %17, %struct.btstack* %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %6, align 4
  br label %185

91:                                               ; preds = %65
  %92 = load %struct.metapage*, %struct.metapage** %13, align 8
  %93 = load %struct.inode*, %struct.inode** %8, align 8
  %94 = call i32 @BT_MARK_DIRTY(%struct.metapage* %92, %struct.inode* %93)
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.inode*, %struct.inode** %8, align 8
  %97 = load %struct.metapage*, %struct.metapage** %13, align 8
  %98 = load i32, i32* @tlckDTREE, align 4
  %99 = load i32, i32* @tlckENTRY, align 4
  %100 = or i32 %98, %99
  %101 = call %struct.tlock* @txLock(i32 %95, %struct.inode* %96, %struct.metapage* %97, i32 %100)
  store %struct.tlock* %101, %struct.tlock** %21, align 8
  %102 = load %struct.tlock*, %struct.tlock** %21, align 8
  %103 = getelementptr inbounds %struct.tlock, %struct.tlock* %102, i32 0, i32 0
  %104 = bitcast i32* %103 to %struct.dt_lock*
  store %struct.dt_lock* %104, %struct.dt_lock** %19, align 8
  %105 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %106 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @ASSERT(i32 %109)
  %111 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %112 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %111, i32 0, i32 2
  %113 = load %struct.lv*, %struct.lv** %112, align 8
  %114 = getelementptr inbounds %struct.lv, %struct.lv* %113, i64 0
  store %struct.lv* %114, %struct.lv** %22, align 8
  %115 = load %struct.lv*, %struct.lv** %22, align 8
  %116 = getelementptr inbounds %struct.lv, %struct.lv* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load %struct.lv*, %struct.lv** %22, align 8
  %118 = getelementptr inbounds %struct.lv, %struct.lv* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %120 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %120, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load %struct.component_name*, %struct.component_name** %9, align 8
  %126 = call i32 @dtInsertEntry(%struct.TYPE_11__* %123, i32 %124, %struct.component_name* %125, %struct.TYPE_12__* %18, %struct.dt_lock** %19)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @BT_ROOT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %182, label %134

134:                                              ; preds = %91
  %135 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %136 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %139 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp uge i64 %137, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %144 = call i64 @txLinelock(%struct.dt_lock* %143)
  %145 = inttoptr i64 %144 to %struct.dt_lock*
  store %struct.dt_lock* %145, %struct.dt_lock** %19, align 8
  br label %146

146:                                              ; preds = %142, %134
  %147 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %148 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %147, i32 0, i32 2
  %149 = load %struct.lv*, %struct.lv** %148, align 8
  %150 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %151 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.lv, %struct.lv* %149, i64 %152
  store %struct.lv* %153, %struct.lv** %22, align 8
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* @L2DTSLOTSIZE, align 4
  %156 = ashr i32 %154, %155
  store i32 %156, i32* %20, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* %20, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %160, %162
  %164 = load %struct.lv*, %struct.lv** %22, align 8
  %165 = getelementptr inbounds %struct.lv, %struct.lv* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %169, 1
  %171 = load i32, i32* @L2DTSLOTSIZE, align 4
  %172 = ashr i32 %170, %171
  %173 = load i32, i32* %20, align 4
  %174 = sub nsw i32 %172, %173
  %175 = add nsw i32 %174, 1
  %176 = load %struct.lv*, %struct.lv** %22, align 8
  %177 = getelementptr inbounds %struct.lv, %struct.lv* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %179 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %179, align 8
  br label %182

182:                                              ; preds = %146, %91
  %183 = load %struct.metapage*, %struct.metapage** %13, align 8
  %184 = call i32 @DT_PUTPAGE(%struct.metapage* %183)
  store i32 0, i32* %6, align 4
  br label %185

185:                                              ; preds = %182, %76, %42
  %186 = load i32, i32* %6, align 4
  ret i32 %186
}

declare dso_local i32 @DT_GETSEARCH(%struct.inode*, i32, i32, %struct.metapage*, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @DO_INDEX(%struct.inode*) #1

declare dso_local %struct.TYPE_13__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @DT_PUTPAGE(%struct.metapage*) #1

declare dso_local i32 @NDTLEAF(i32) #1

declare dso_local i32 @NDTLEAF_LEGACY(i32) #1

declare dso_local i32 @dtSplitUp(i32, %struct.inode*, %struct.dtsplit*, %struct.btstack*) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.inode*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtInsertEntry(%struct.TYPE_11__*, i32, %struct.component_name*, %struct.TYPE_12__*, %struct.dt_lock**) #1

declare dso_local i64 @txLinelock(%struct.dt_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
