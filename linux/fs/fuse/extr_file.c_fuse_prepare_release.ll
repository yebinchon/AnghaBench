; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_prepare_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_prepare_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_inode = type { i32 }
%struct.fuse_file = type { i32, i32, i32, i32, i32, %struct.fuse_release_args*, %struct.fuse_conn* }
%struct.fuse_release_args = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fuse_conn = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_inode*, %struct.fuse_file*, i32, i32)* @fuse_prepare_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_prepare_release(%struct.fuse_inode* %0, %struct.fuse_file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fuse_inode*, align 8
  %6 = alloca %struct.fuse_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_conn*, align 8
  %10 = alloca %struct.fuse_release_args*, align 8
  store %struct.fuse_inode* %0, %struct.fuse_inode** %5, align 8
  store %struct.fuse_file* %1, %struct.fuse_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %12 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %11, i32 0, i32 6
  %13 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  store %struct.fuse_conn* %13, %struct.fuse_conn** %9, align 8
  %14 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %15 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %14, i32 0, i32 5
  %16 = load %struct.fuse_release_args*, %struct.fuse_release_args** %15, align 8
  store %struct.fuse_release_args* %16, %struct.fuse_release_args** %10, align 8
  %17 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %18 = call i64 @likely(%struct.fuse_inode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %22 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %25 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %24, i32 0, i32 4
  %26 = call i32 @list_del(i32* %25)
  %27 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %28 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  br label %30

30:                                               ; preds = %20, %4
  %31 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %32 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %35 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %34, i32 0, i32 3
  %36 = call i32 @RB_EMPTY_NODE(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %40 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %39, i32 0, i32 3
  %41 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %42 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %41, i32 0, i32 1
  %43 = call i32 @rb_erase(i32* %40, i32* %42)
  br label %44

44:                                               ; preds = %38, %30
  %45 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %46 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %49 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %48, i32 0, i32 2
  %50 = call i32 @wake_up_interruptible_all(i32* %49)
  %51 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %52 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fuse_release_args*, %struct.fuse_release_args** %10, align 8
  %55 = getelementptr inbounds %struct.fuse_release_args, %struct.fuse_release_args* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.fuse_release_args*, %struct.fuse_release_args** %10, align 8
  %59 = getelementptr inbounds %struct.fuse_release_args, %struct.fuse_release_args* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.fuse_release_args*, %struct.fuse_release_args** %10, align 8
  %62 = getelementptr inbounds %struct.fuse_release_args, %struct.fuse_release_args* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.fuse_release_args*, %struct.fuse_release_args** %10, align 8
  %65 = getelementptr inbounds %struct.fuse_release_args, %struct.fuse_release_args* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 4, i32* %69, align 8
  %70 = load %struct.fuse_release_args*, %struct.fuse_release_args** %10, align 8
  %71 = getelementptr inbounds %struct.fuse_release_args, %struct.fuse_release_args* %70, i32 0, i32 1
  %72 = load %struct.fuse_release_args*, %struct.fuse_release_args** %10, align 8
  %73 = getelementptr inbounds %struct.fuse_release_args, %struct.fuse_release_args* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.fuse_release_args*, %struct.fuse_release_args** %10, align 8
  %80 = getelementptr inbounds %struct.fuse_release_args, %struct.fuse_release_args* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %83 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.fuse_release_args*, %struct.fuse_release_args** %10, align 8
  %86 = getelementptr inbounds %struct.fuse_release_args, %struct.fuse_release_args* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  store i32 %84, i32* %87, align 8
  %88 = load %struct.fuse_release_args*, %struct.fuse_release_args** %10, align 8
  %89 = getelementptr inbounds %struct.fuse_release_args, %struct.fuse_release_args* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  %91 = load %struct.fuse_release_args*, %struct.fuse_release_args** %10, align 8
  %92 = getelementptr inbounds %struct.fuse_release_args, %struct.fuse_release_args* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  store i32 1, i32* %93, align 4
  ret void
}

declare dso_local i64 @likely(%struct.fuse_inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
