; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_reiserfs.h_entry_length.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_reiserfs.h_entry_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.item_head = type { i32 }
%struct.reiserfs_de_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*, %struct.item_head*, i32)* @entry_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entry_length(%struct.buffer_head* %0, %struct.item_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.item_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.reiserfs_de_head*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %5, align 8
  store %struct.item_head* %1, %struct.item_head** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %10 = load %struct.item_head*, %struct.item_head** %6, align 8
  %11 = call %struct.reiserfs_de_head* @B_I_DEH(%struct.buffer_head* %9, %struct.item_head* %10)
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %11, i64 %13
  store %struct.reiserfs_de_head* %14, %struct.reiserfs_de_head** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %8, align 8
  %19 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %18, i64 -1
  %20 = call i32 @deh_location(%struct.reiserfs_de_head* %19)
  %21 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %8, align 8
  %22 = call i32 @deh_location(%struct.reiserfs_de_head* %21)
  %23 = sub nsw i32 %20, %22
  store i32 %23, i32* %4, align 4
  br label %30

24:                                               ; preds = %3
  %25 = load %struct.item_head*, %struct.item_head** %6, align 8
  %26 = call i32 @ih_item_len(%struct.item_head* %25)
  %27 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %8, align 8
  %28 = call i32 @deh_location(%struct.reiserfs_de_head* %27)
  %29 = sub nsw i32 %26, %28
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %24, %17
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.reiserfs_de_head* @B_I_DEH(%struct.buffer_head*, %struct.item_head*) #1

declare dso_local i32 @deh_location(%struct.reiserfs_de_head*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
