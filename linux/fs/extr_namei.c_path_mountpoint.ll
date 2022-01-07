; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_path_mountpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_path_mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { %struct.path }
%struct.path = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, i32, %struct.path*)* @path_mountpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_mountpoint(%struct.nameidata* %0, i32 %1, %struct.path* %2) #0 {
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.path*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.path* %2, %struct.path** %6, align 8
  %9 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i8* @path_init(%struct.nameidata* %9, i32 %10)
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %23, %3
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %15 = call i32 @link_path_walk(i8* %13, %struct.nameidata* %14)
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %19 = call i32 @mountpoint_last(%struct.nameidata* %18)
  store i32 %19, i32* %8, align 4
  %20 = icmp sgt i32 %19, 0
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i1 [ false, %12 ], [ %20, %17 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %25 = call i8* @trailing_symlink(%struct.nameidata* %24)
  store i8* %25, i8** %7, align 8
  br label %12

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = load %struct.path*, %struct.path** %6, align 8
  %31 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %32 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %31, i32 0, i32 0
  %33 = bitcast %struct.path* %30 to i8*
  %34 = bitcast %struct.path* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  %35 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %36 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.path, %struct.path* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %39 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.path, %struct.path* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.path*, %struct.path** %6, align 8
  %42 = call i32 @follow_mount(%struct.path* %41)
  br label %43

43:                                               ; preds = %29, %26
  %44 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %45 = call i32 @terminate_walk(%struct.nameidata* %44)
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local i8* @path_init(%struct.nameidata*, i32) #1

declare dso_local i32 @link_path_walk(i8*, %struct.nameidata*) #1

declare dso_local i32 @mountpoint_last(%struct.nameidata*) #1

declare dso_local i8* @trailing_symlink(%struct.nameidata*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @follow_mount(%struct.path*) #1

declare dso_local i32 @terminate_walk(%struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
