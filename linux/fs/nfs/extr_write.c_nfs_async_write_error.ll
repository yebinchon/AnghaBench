; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_async_write_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_async_write_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.nfs_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, i32)* @nfs_async_write_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_async_write_error(%struct.list_head* %0, i32 %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_page*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %28, %2
  %7 = load %struct.list_head*, %struct.list_head** %3, align 8
  %8 = call i32 @list_empty(%struct.list_head* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load %struct.list_head*, %struct.list_head** %3, align 8
  %13 = getelementptr inbounds %struct.list_head, %struct.list_head* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nfs_page* @nfs_list_entry(i32 %14)
  store %struct.nfs_page* %15, %struct.nfs_page** %5, align 8
  %16 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %17 = call i32 @nfs_list_remove_request(%struct.nfs_page* %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @nfs_error_is_fatal(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @nfs_write_error(%struct.nfs_page* %22, i32 %23)
  br label %28

25:                                               ; preds = %11
  %26 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %27 = call i32 @nfs_redirty_request(%struct.nfs_page* %26)
  br label %28

28:                                               ; preds = %25, %21
  br label %6

29:                                               ; preds = %6
  ret void
}

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i64 @nfs_error_is_fatal(i32) #1

declare dso_local i32 @nfs_write_error(%struct.nfs_page*, i32) #1

declare dso_local i32 @nfs_redirty_request(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
