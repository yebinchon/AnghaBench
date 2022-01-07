; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_ubifs_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_ubifs_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32, i32)* @ubifs_invalidatepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubifs_invalidatepage(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ubifs_info*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %17, align 8
  store %struct.ubifs_info* %18, %struct.ubifs_info** %8, align 8
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i32 @PagePrivate(%struct.page* %20)
  %22 = call i32 @ubifs_assert(%struct.ubifs_info* %19, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %3
  br label %48

30:                                               ; preds = %25
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i64 @PageChecked(%struct.page* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %36 = call i32 @release_new_page_budget(%struct.ubifs_info* %35)
  br label %40

37:                                               ; preds = %30
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %39 = call i32 @release_existing_page_budget(%struct.ubifs_info* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 0
  %43 = call i32 @atomic_long_dec(i32* %42)
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = call i32 @ClearPagePrivate(%struct.page* %44)
  %46 = load %struct.page*, %struct.page** %4, align 8
  %47 = call i32 @ClearPageChecked(%struct.page* %46)
  br label %48

48:                                               ; preds = %40, %29
  ret void
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i64 @PageChecked(%struct.page*) #1

declare dso_local i32 @release_new_page_budget(%struct.ubifs_info*) #1

declare dso_local i32 @release_existing_page_budget(%struct.ubifs_info*) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
