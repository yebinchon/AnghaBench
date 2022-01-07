; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_direntry_check_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_direntry_check_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item_head = type { i32 }
%struct.reiserfs_de_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.item_head*, i8*)* @direntry_check_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @direntry_check_item(%struct.item_head* %0, i8* %1) #0 {
  %3 = alloca %struct.item_head*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.reiserfs_de_head*, align 8
  store %struct.item_head* %0, %struct.item_head** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.reiserfs_de_head*
  store %struct.reiserfs_de_head* %8, %struct.reiserfs_de_head** %6, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %15, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.item_head*, %struct.item_head** %3, align 8
  %12 = call i32 @ih_entry_count(%struct.item_head* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %6, align 8
  %19 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %18, i32 1
  store %struct.reiserfs_de_head* %19, %struct.reiserfs_de_head** %6, align 8
  br label %9

20:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ih_entry_count(%struct.item_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
