; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_debug_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_debug_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.o2hb_debug_buf = type { i32, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@o2hb_debug_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dentry*, %struct.o2hb_debug_buf**, i32, i32, i32, i32, i8*)* @o2hb_debug_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2hb_debug_create(i8* %0, %struct.dentry* %1, %struct.o2hb_debug_buf** %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.o2hb_debug_buf**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store %struct.dentry* %1, %struct.dentry** %10, align 8
  store %struct.o2hb_debug_buf** %2, %struct.o2hb_debug_buf*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.o2hb_debug_buf* @kmalloc(i32 %17, i32 %18)
  %20 = load %struct.o2hb_debug_buf**, %struct.o2hb_debug_buf*** %11, align 8
  store %struct.o2hb_debug_buf* %19, %struct.o2hb_debug_buf** %20, align 8
  %21 = load %struct.o2hb_debug_buf**, %struct.o2hb_debug_buf*** %11, align 8
  %22 = load %struct.o2hb_debug_buf*, %struct.o2hb_debug_buf** %21, align 8
  %23 = icmp ne %struct.o2hb_debug_buf* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %8
  br label %50

25:                                               ; preds = %8
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.o2hb_debug_buf**, %struct.o2hb_debug_buf*** %11, align 8
  %28 = load %struct.o2hb_debug_buf*, %struct.o2hb_debug_buf** %27, align 8
  %29 = getelementptr inbounds %struct.o2hb_debug_buf, %struct.o2hb_debug_buf* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.o2hb_debug_buf**, %struct.o2hb_debug_buf*** %11, align 8
  %32 = load %struct.o2hb_debug_buf*, %struct.o2hb_debug_buf** %31, align 8
  %33 = getelementptr inbounds %struct.o2hb_debug_buf, %struct.o2hb_debug_buf* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load %struct.o2hb_debug_buf**, %struct.o2hb_debug_buf*** %11, align 8
  %36 = load %struct.o2hb_debug_buf*, %struct.o2hb_debug_buf** %35, align 8
  %37 = getelementptr inbounds %struct.o2hb_debug_buf, %struct.o2hb_debug_buf* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = load %struct.o2hb_debug_buf**, %struct.o2hb_debug_buf*** %11, align 8
  %40 = load %struct.o2hb_debug_buf*, %struct.o2hb_debug_buf** %39, align 8
  %41 = getelementptr inbounds %struct.o2hb_debug_buf, %struct.o2hb_debug_buf* %40, i32 0, i32 3
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* @S_IFREG, align 4
  %44 = load i32, i32* @S_IRUSR, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.dentry*, %struct.dentry** %10, align 8
  %47 = load %struct.o2hb_debug_buf**, %struct.o2hb_debug_buf*** %11, align 8
  %48 = load %struct.o2hb_debug_buf*, %struct.o2hb_debug_buf** %47, align 8
  %49 = call i32 @debugfs_create_file(i8* %42, i32 %45, %struct.dentry* %46, %struct.o2hb_debug_buf* %48, i32* @o2hb_debug_fops)
  br label %50

50:                                               ; preds = %25, %24
  ret void
}

declare dso_local %struct.o2hb_debug_buf* @kmalloc(i32, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.o2hb_debug_buf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
