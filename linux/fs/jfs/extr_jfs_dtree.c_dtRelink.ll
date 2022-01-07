; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtRelink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtRelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.metapage = type { i32 }
%struct.tlock = type { i32 }
%struct.dt_lock = type { i64, i64, %struct.lv* }
%struct.lv = type { i32, i64 }

@PSIZE = common dso_local global i32 0, align 4
@tlckDTREE = common dso_local global i32 0, align 4
@tlckRELINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"dtRelink nextbn: tlck = 0x%p, ip = 0x%p, mp=0x%p\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"dtRelink prevbn: tlck = 0x%p, ip = 0x%p, mp=0x%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inode*, %struct.TYPE_6__*)* @dtRelink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtRelink(i32 %0, %struct.inode* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.metapage*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tlock*, align 8
  %13 = alloca %struct.dt_lock*, align 8
  %14 = alloca %struct.lv*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @le64_to_cpu(i8* %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @le64_to_cpu(i8* %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %91

27:                                               ; preds = %3
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.metapage*, %struct.metapage** %9, align 8
  %31 = load i32, i32* @PSIZE, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @DT_GETPAGE(%struct.inode* %28, i64 %29, %struct.metapage* %30, i32 %31, %struct.TYPE_6__* %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %159

39:                                               ; preds = %27
  %40 = load %struct.metapage*, %struct.metapage** %9, align 8
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call i32 @BT_MARK_DIRTY(%struct.metapage* %40, %struct.inode* %41)
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = load %struct.metapage*, %struct.metapage** %9, align 8
  %46 = load i32, i32* @tlckDTREE, align 4
  %47 = load i32, i32* @tlckRELINK, align 4
  %48 = or i32 %46, %47
  %49 = call %struct.tlock* @txLock(i32 %43, %struct.inode* %44, %struct.metapage* %45, i32 %48)
  store %struct.tlock* %49, %struct.tlock** %12, align 8
  %50 = load %struct.tlock*, %struct.tlock** %12, align 8
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = load %struct.metapage*, %struct.metapage** %9, align 8
  %53 = call i32 @jfs_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.tlock* %50, %struct.inode* %51, %struct.metapage* %52)
  %54 = load %struct.tlock*, %struct.tlock** %12, align 8
  %55 = getelementptr inbounds %struct.tlock, %struct.tlock* %54, i32 0, i32 0
  %56 = bitcast i32* %55 to %struct.dt_lock*
  store %struct.dt_lock* %56, %struct.dt_lock** %13, align 8
  %57 = load %struct.dt_lock*, %struct.dt_lock** %13, align 8
  %58 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.dt_lock*, %struct.dt_lock** %13, align 8
  %61 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp uge i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %39
  %65 = load %struct.dt_lock*, %struct.dt_lock** %13, align 8
  %66 = call i64 @txLinelock(%struct.dt_lock* %65)
  %67 = inttoptr i64 %66 to %struct.dt_lock*
  store %struct.dt_lock* %67, %struct.dt_lock** %13, align 8
  br label %68

68:                                               ; preds = %64, %39
  %69 = load %struct.dt_lock*, %struct.dt_lock** %13, align 8
  %70 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %69, i32 0, i32 2
  %71 = load %struct.lv*, %struct.lv** %70, align 8
  %72 = load %struct.dt_lock*, %struct.dt_lock** %13, align 8
  %73 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.lv, %struct.lv* %71, i64 %74
  store %struct.lv* %75, %struct.lv** %14, align 8
  %76 = load %struct.lv*, %struct.lv** %14, align 8
  %77 = getelementptr inbounds %struct.lv, %struct.lv* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.lv*, %struct.lv** %14, align 8
  %79 = getelementptr inbounds %struct.lv, %struct.lv* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.dt_lock*, %struct.dt_lock** %13, align 8
  %81 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = load i64, i64* %11, align 8
  %85 = call i8* @cpu_to_le64(i64 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = load %struct.metapage*, %struct.metapage** %9, align 8
  %90 = call i32 @DT_PUTPAGE(%struct.metapage* %89)
  br label %91

91:                                               ; preds = %68, %3
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %158

94:                                               ; preds = %91
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.metapage*, %struct.metapage** %9, align 8
  %98 = load i32, i32* @PSIZE, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @DT_GETPAGE(%struct.inode* %95, i64 %96, %struct.metapage* %97, i32 %98, %struct.TYPE_6__* %99, i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %4, align 4
  br label %159

106:                                              ; preds = %94
  %107 = load %struct.metapage*, %struct.metapage** %9, align 8
  %108 = load %struct.inode*, %struct.inode** %6, align 8
  %109 = call i32 @BT_MARK_DIRTY(%struct.metapage* %107, %struct.inode* %108)
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.inode*, %struct.inode** %6, align 8
  %112 = load %struct.metapage*, %struct.metapage** %9, align 8
  %113 = load i32, i32* @tlckDTREE, align 4
  %114 = load i32, i32* @tlckRELINK, align 4
  %115 = or i32 %113, %114
  %116 = call %struct.tlock* @txLock(i32 %110, %struct.inode* %111, %struct.metapage* %112, i32 %115)
  store %struct.tlock* %116, %struct.tlock** %12, align 8
  %117 = load %struct.tlock*, %struct.tlock** %12, align 8
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = load %struct.metapage*, %struct.metapage** %9, align 8
  %120 = call i32 @jfs_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), %struct.tlock* %117, %struct.inode* %118, %struct.metapage* %119)
  %121 = load %struct.tlock*, %struct.tlock** %12, align 8
  %122 = getelementptr inbounds %struct.tlock, %struct.tlock* %121, i32 0, i32 0
  %123 = bitcast i32* %122 to %struct.dt_lock*
  store %struct.dt_lock* %123, %struct.dt_lock** %13, align 8
  %124 = load %struct.dt_lock*, %struct.dt_lock** %13, align 8
  %125 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.dt_lock*, %struct.dt_lock** %13, align 8
  %128 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp uge i64 %126, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %106
  %132 = load %struct.dt_lock*, %struct.dt_lock** %13, align 8
  %133 = call i64 @txLinelock(%struct.dt_lock* %132)
  %134 = inttoptr i64 %133 to %struct.dt_lock*
  store %struct.dt_lock* %134, %struct.dt_lock** %13, align 8
  br label %135

135:                                              ; preds = %131, %106
  %136 = load %struct.dt_lock*, %struct.dt_lock** %13, align 8
  %137 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %136, i32 0, i32 2
  %138 = load %struct.lv*, %struct.lv** %137, align 8
  %139 = load %struct.dt_lock*, %struct.dt_lock** %13, align 8
  %140 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.lv, %struct.lv* %138, i64 %141
  store %struct.lv* %142, %struct.lv** %14, align 8
  %143 = load %struct.lv*, %struct.lv** %14, align 8
  %144 = getelementptr inbounds %struct.lv, %struct.lv* %143, i32 0, i32 1
  store i64 0, i64* %144, align 8
  %145 = load %struct.lv*, %struct.lv** %14, align 8
  %146 = getelementptr inbounds %struct.lv, %struct.lv* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load %struct.dt_lock*, %struct.dt_lock** %13, align 8
  %148 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %148, align 8
  %151 = load i64, i64* %10, align 8
  %152 = call i8* @cpu_to_le64(i64 %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  store i8* %152, i8** %155, align 8
  %156 = load %struct.metapage*, %struct.metapage** %9, align 8
  %157 = call i32 @DT_PUTPAGE(%struct.metapage* %156)
  br label %158

158:                                              ; preds = %135, %91
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %104, %37
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i64 @le64_to_cpu(i8*) #1

declare dso_local i32 @DT_GETPAGE(%struct.inode*, i64, %struct.metapage*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.inode*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i32 @jfs_info(i8*, %struct.tlock*, %struct.inode*, %struct.metapage*) #1

declare dso_local i64 @txLinelock(%struct.dt_lock*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @DT_PUTPAGE(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
