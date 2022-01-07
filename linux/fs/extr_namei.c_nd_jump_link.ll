; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_nd_jump_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_nd_jump_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.nameidata* }
%struct.nameidata = type { i32, %struct.path, i32 }
%struct.path = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@LOOKUP_JUMPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd_jump_link(%struct.path* %0) #0 {
  %2 = alloca %struct.path*, align 8
  %3 = alloca %struct.nameidata*, align 8
  store %struct.path* %0, %struct.path** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  store %struct.nameidata* %6, %struct.nameidata** %3, align 8
  %7 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %8 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 1
  %9 = call i32 @path_put(%struct.path* %8)
  %10 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %11 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 1
  %12 = load %struct.path*, %struct.path** %2, align 8
  %13 = bitcast %struct.path* %11 to i8*
  %14 = bitcast %struct.path* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %16 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %22 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @LOOKUP_JUMPED, align 4
  %24 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %25 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  ret void
}

declare dso_local i32 @path_put(%struct.path*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
