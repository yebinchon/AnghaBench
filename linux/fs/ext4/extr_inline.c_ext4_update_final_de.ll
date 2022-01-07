; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_update_final_de.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_update_final_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_dir_entry_2 = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @ext4_update_final_de to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_update_final_de(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_dir_entry_2*, align 8
  %8 = alloca %struct.ext4_dir_entry_2*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %12, %struct.ext4_dir_entry_2** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %3
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %16, i64 %18
  store i8* %19, i8** %9, align 8
  br label %20

20:                                               ; preds = %33, %15
  %21 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  store %struct.ext4_dir_entry_2* %21, %struct.ext4_dir_entry_2** %8, align 8
  %22 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %23 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ext4_rec_len_from_disk(i8* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr i8, i8* %28, i64 %29
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = bitcast i8* %31 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %32, %struct.ext4_dir_entry_2** %7, align 8
  br label %33

33:                                               ; preds = %20
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %20, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = call i8* @ext4_rec_len_to_disk(i32 %42, i32 %43)
  %45 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %46 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %55

47:                                               ; preds = %3
  %48 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %49 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i8* @ext4_rec_len_to_disk(i32 %50, i32 %51)
  %53 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %54 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %47, %37
  ret void
}

declare dso_local i32 @ext4_rec_len_from_disk(i8*, i32) #1

declare dso_local i8* @ext4_rec_len_to_disk(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
