; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_fc_drop_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_fc_drop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.super_block* }
%struct.super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_drop_locked(%struct.fs_context* %0) #0 {
  %2 = alloca %struct.fs_context*, align 8
  %3 = alloca %struct.super_block*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %2, align 8
  %4 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %5 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.super_block*, %struct.super_block** %7, align 8
  store %struct.super_block* %8, %struct.super_block** %3, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %10 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @dput(%struct.TYPE_2__* %11)
  %13 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %14 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %13, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %14, align 8
  %15 = load %struct.super_block*, %struct.super_block** %3, align 8
  %16 = call i32 @deactivate_locked_super(%struct.super_block* %15)
  ret void
}

declare dso_local i32 @dput(%struct.TYPE_2__*) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
