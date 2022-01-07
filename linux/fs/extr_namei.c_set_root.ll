; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_set_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_set_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.fs_struct* }
%struct.fs_struct = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nameidata = type { i32, %struct.TYPE_5__, i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@LOOKUP_RCU = common dso_local global i32 0, align 4
@LOOKUP_ROOT_GRABBED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nameidata*)* @set_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_root(%struct.nameidata* %0) #0 {
  %2 = alloca %struct.nameidata*, align 8
  %3 = alloca %struct.fs_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.fs_struct*, %struct.fs_struct** %6, align 8
  store %struct.fs_struct* %7, %struct.fs_struct** %3, align 8
  %8 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %9 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @LOOKUP_RCU, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %33, %14
  %16 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %17 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %16, i32 0, i32 1
  %18 = call i32 @read_seqcount_begin(i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %20 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 1
  %21 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %22 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %21, i32 0, i32 0
  %23 = bitcast %struct.TYPE_5__* %20 to i8*
  %24 = bitcast %struct.TYPE_5__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 8, i1 false)
  %25 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %26 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @__read_seqcount_begin(i32* %29)
  %31 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %32 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %15
  %34 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %35 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %34, i32 0, i32 1
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @read_seqcount_retry(i32* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %15, label %39

39:                                               ; preds = %33
  br label %50

40:                                               ; preds = %1
  %41 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %42 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %43 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %42, i32 0, i32 1
  %44 = call i32 @get_fs_root(%struct.fs_struct* %41, %struct.TYPE_5__* %43)
  %45 = load i32, i32* @LOOKUP_ROOT_GRABBED, align 4
  %46 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %47 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @read_seqcount_begin(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__read_seqcount_begin(i32*) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @get_fs_root(%struct.fs_struct*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
