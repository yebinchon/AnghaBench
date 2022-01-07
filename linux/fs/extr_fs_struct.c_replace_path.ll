; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_struct.c_replace_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_struct.c_replace_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.path*, %struct.path*)* @replace_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_path(%struct.path* %0, %struct.path* %1, %struct.path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.path*, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store %struct.path* %2, %struct.path** %7, align 8
  %8 = load %struct.path*, %struct.path** %5, align 8
  %9 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.path*, %struct.path** %6, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load %struct.path*, %struct.path** %5, align 8
  %17 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.path*, %struct.path** %6, align 8
  %20 = getelementptr inbounds %struct.path, %struct.path* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br label %23

23:                                               ; preds = %15, %3
  %24 = phi i1 [ true, %3 ], [ %22, %15 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %34

29:                                               ; preds = %23
  %30 = load %struct.path*, %struct.path** %5, align 8
  %31 = load %struct.path*, %struct.path** %7, align 8
  %32 = bitcast %struct.path* %30 to i8*
  %33 = bitcast %struct.path* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @likely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
