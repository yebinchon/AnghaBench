; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_path_parentat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_path_parentat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { %struct.path }
%struct.path = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, i32, %struct.path*)* @path_parentat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_parentat(%struct.nameidata* %0, i32 %1, %struct.path* %2) #0 {
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
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %14 = call i32 @link_path_walk(i8* %12, %struct.nameidata* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %19 = call i32 @complete_walk(%struct.nameidata* %18)
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = load %struct.path*, %struct.path** %6, align 8
  %25 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %26 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %25, i32 0, i32 0
  %27 = bitcast %struct.path* %24 to i8*
  %28 = bitcast %struct.path* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 16, i1 false)
  %29 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %30 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.path, %struct.path* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %33 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.path, %struct.path* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %23, %20
  %36 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %37 = call i32 @terminate_walk(%struct.nameidata* %36)
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i8* @path_init(%struct.nameidata*, i32) #1

declare dso_local i32 @link_path_walk(i8*, %struct.nameidata*) #1

declare dso_local i32 @complete_walk(%struct.nameidata*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @terminate_walk(%struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
