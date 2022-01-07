; ModuleID = '/home/carl/AnghaBench/linux/fs/isofs/extr_isofs.h_isofs_normalize_block_and_offset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/isofs/extr_isofs.h_isofs_normalize_block_and_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_directory_record = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iso_directory_record*, i64*, i64*)* @isofs_normalize_block_and_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isofs_normalize_block_and_offset(%struct.iso_directory_record* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.iso_directory_record*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store %struct.iso_directory_record* %0, %struct.iso_directory_record** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %8 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load i64*, i64** %6, align 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %17 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @isonum_733(i32 %18)
  %20 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %21 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @isonum_711(i32 %22)
  %24 = add i64 %19, %23
  %25 = load i64*, i64** %5, align 8
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %14, %3
  ret void
}

declare dso_local i64 @isonum_733(i32) #1

declare dso_local i64 @isonum_711(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
