; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_copy_node_footer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_copy_node_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.f2fs_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.page*)* @copy_node_footer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_node_footer(%struct.page* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.f2fs_node*, align 8
  %6 = alloca %struct.f2fs_node*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call %struct.f2fs_node* @F2FS_NODE(%struct.page* %7)
  store %struct.f2fs_node* %8, %struct.f2fs_node** %5, align 8
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = call %struct.f2fs_node* @F2FS_NODE(%struct.page* %9)
  store %struct.f2fs_node* %10, %struct.f2fs_node** %6, align 8
  %11 = load %struct.f2fs_node*, %struct.f2fs_node** %6, align 8
  %12 = getelementptr inbounds %struct.f2fs_node, %struct.f2fs_node* %11, i32 0, i32 0
  %13 = load %struct.f2fs_node*, %struct.f2fs_node** %5, align 8
  %14 = getelementptr inbounds %struct.f2fs_node, %struct.f2fs_node* %13, i32 0, i32 0
  %15 = call i32 @memcpy(i32* %12, i32* %14, i32 4)
  ret void
}

declare dso_local %struct.f2fs_node* @F2FS_NODE(%struct.page*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
