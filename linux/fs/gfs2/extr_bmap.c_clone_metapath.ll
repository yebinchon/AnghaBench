; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_clone_metapath.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_clone_metapath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapath = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.metapath*, %struct.metapath*)* @clone_metapath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clone_metapath(%struct.metapath* %0, %struct.metapath* %1) #0 {
  %3 = alloca %struct.metapath*, align 8
  %4 = alloca %struct.metapath*, align 8
  %5 = alloca i32, align 4
  store %struct.metapath* %0, %struct.metapath** %3, align 8
  store %struct.metapath* %1, %struct.metapath** %4, align 8
  %6 = load %struct.metapath*, %struct.metapath** %3, align 8
  %7 = load %struct.metapath*, %struct.metapath** %4, align 8
  %8 = bitcast %struct.metapath* %6 to i8*
  %9 = bitcast %struct.metapath* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.metapath*, %struct.metapath** %4, align 8
  %13 = getelementptr inbounds %struct.metapath, %struct.metapath* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.metapath*, %struct.metapath** %3, align 8
  %18 = getelementptr inbounds %struct.metapath, %struct.metapath* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @get_bh(i32 %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %10

28:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_bh(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
