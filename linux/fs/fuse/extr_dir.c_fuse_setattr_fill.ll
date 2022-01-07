; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_setattr_fill.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_setattr_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.fuse_args = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.fuse_attr_out* }
%struct.TYPE_3__ = type { i32, %struct.fuse_setattr_in* }
%struct.inode = type { i32 }
%struct.fuse_setattr_in = type { i32 }
%struct.fuse_attr_out = type { i32 }

@FUSE_SETATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_args*, %struct.inode*, %struct.fuse_setattr_in*, %struct.fuse_attr_out*)* @fuse_setattr_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_setattr_fill(%struct.fuse_conn* %0, %struct.fuse_args* %1, %struct.inode* %2, %struct.fuse_setattr_in* %3, %struct.fuse_attr_out* %4) #0 {
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca %struct.fuse_args*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.fuse_setattr_in*, align 8
  %10 = alloca %struct.fuse_attr_out*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %6, align 8
  store %struct.fuse_args* %1, %struct.fuse_args** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.fuse_setattr_in* %3, %struct.fuse_setattr_in** %9, align 8
  store %struct.fuse_attr_out* %4, %struct.fuse_attr_out** %10, align 8
  %11 = load i32, i32* @FUSE_SETATTR, align 4
  %12 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %13 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = call i32 @get_node_id(%struct.inode* %14)
  %16 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %17 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %19 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %21 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 4, i32* %24, align 8
  %25 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %9, align 8
  %26 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %27 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store %struct.fuse_setattr_in* %25, %struct.fuse_setattr_in** %30, align 8
  %31 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %32 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %34 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 4, i32* %37, align 8
  %38 = load %struct.fuse_attr_out*, %struct.fuse_attr_out** %10, align 8
  %39 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %40 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store %struct.fuse_attr_out* %38, %struct.fuse_attr_out** %43, align 8
  ret void
}

declare dso_local i32 @get_node_id(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
