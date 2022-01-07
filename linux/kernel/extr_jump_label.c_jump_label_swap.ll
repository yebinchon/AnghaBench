; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_jump_label.c_jump_label_swap.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_jump_label.c_jump_label_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jump_entry = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @jump_label_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jump_label_swap(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.jump_entry*, align 8
  %9 = alloca %struct.jump_entry*, align 8
  %10 = alloca %struct.jump_entry, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load i8*, i8** %5, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = sub i64 %12, %14
  store i64 %15, i64* %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.jump_entry*
  store %struct.jump_entry* %17, %struct.jump_entry** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.jump_entry*
  store %struct.jump_entry* %19, %struct.jump_entry** %9, align 8
  %20 = load %struct.jump_entry*, %struct.jump_entry** %8, align 8
  %21 = bitcast %struct.jump_entry* %10 to i8*
  %22 = bitcast %struct.jump_entry* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 24, i1 false)
  %23 = load %struct.jump_entry*, %struct.jump_entry** %9, align 8
  %24 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load %struct.jump_entry*, %struct.jump_entry** %8, align 8
  %29 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load %struct.jump_entry*, %struct.jump_entry** %9, align 8
  %31 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load %struct.jump_entry*, %struct.jump_entry** %8, align 8
  %36 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.jump_entry*, %struct.jump_entry** %9, align 8
  %38 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load %struct.jump_entry*, %struct.jump_entry** %8, align 8
  %43 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %10, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %45, %46
  %48 = load %struct.jump_entry*, %struct.jump_entry** %9, align 8
  %49 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %10, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %51, %52
  %54 = load %struct.jump_entry*, %struct.jump_entry** %9, align 8
  %55 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %10, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %57, %58
  %60 = load %struct.jump_entry*, %struct.jump_entry** %9, align 8
  %61 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
