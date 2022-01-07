; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_mchunk_memmove.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_mchunk_memmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z3fold_header = type { i16, i16 }

@CHUNK_SHIFT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.z3fold_header*, i16)* @mchunk_memmove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mchunk_memmove(%struct.z3fold_header* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.z3fold_header*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  store %struct.z3fold_header* %0, %struct.z3fold_header** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %7 = bitcast %struct.z3fold_header* %6 to i8*
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i16, i16* %4, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* @CHUNK_SHIFT, align 2
  %12 = zext i16 %11 to i32
  %13 = shl i32 %10, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr i8, i8* %8, i64 %14
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %18 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @CHUNK_SHIFT, align 2
  %22 = zext i16 %21 to i32
  %23 = shl i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %16, i64 %24
  %26 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %27 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %26, i32 0, i32 1
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* @CHUNK_SHIFT, align 2
  %31 = zext i16 %30 to i32
  %32 = shl i32 %29, %31
  %33 = trunc i32 %32 to i16
  %34 = call i8* @memmove(i8* %15, i8* %25, i16 zeroext %33)
  ret i8* %34
}

declare dso_local i8* @memmove(i8*, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
