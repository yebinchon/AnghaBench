; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_is_reiserfs_3_5.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_is_reiserfs_3_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_super_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@reiserfs_3_5_magic_string = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_reiserfs_3_5(%struct.reiserfs_super_block* %0) #0 {
  %2 = alloca %struct.reiserfs_super_block*, align 8
  store %struct.reiserfs_super_block* %0, %struct.reiserfs_super_block** %2, align 8
  %3 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %2, align 8
  %4 = getelementptr inbounds %struct.reiserfs_super_block, %struct.reiserfs_super_block* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @reiserfs_3_5_magic_string, align 4
  %8 = load i32, i32* @reiserfs_3_5_magic_string, align 4
  %9 = call i32 @strlen(i32 %8)
  %10 = call i32 @strncmp(i32 %6, i32 %7, i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
