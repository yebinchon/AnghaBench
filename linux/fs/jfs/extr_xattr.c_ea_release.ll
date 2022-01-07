; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c_ea_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c_ea_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ea_buffer = type { i32, i32, i32, i32 }

@EA_MALLOC = common dso_local global i32 0, align 4
@EA_EXTENT = common dso_local global i32 0, align 4
@EA_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.ea_buffer*)* @ea_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ea_release(%struct.inode* %0, %struct.ea_buffer* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ea_buffer*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ea_buffer* %1, %struct.ea_buffer** %4, align 8
  %5 = load %struct.ea_buffer*, %struct.ea_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.ea_buffer, %struct.ea_buffer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @EA_MALLOC, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.ea_buffer*, %struct.ea_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.ea_buffer, %struct.ea_buffer* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kfree(i32 %14)
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.ea_buffer*, %struct.ea_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.ea_buffer, %struct.ea_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EA_EXTENT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %16
  %24 = load %struct.ea_buffer*, %struct.ea_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.ea_buffer, %struct.ea_buffer* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.ea_buffer*, %struct.ea_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.ea_buffer, %struct.ea_buffer* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @release_metapage(i32 %30)
  %32 = load %struct.ea_buffer*, %struct.ea_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.ea_buffer, %struct.ea_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EA_NEW, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %23
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = load %struct.ea_buffer*, %struct.ea_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.ea_buffer, %struct.ea_buffer* %40, i32 0, i32 1
  %42 = call i32 @addressDXD(i32* %41)
  %43 = load %struct.ea_buffer*, %struct.ea_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.ea_buffer, %struct.ea_buffer* %43, i32 0, i32 1
  %45 = call i32 @lengthDXD(i32* %44)
  %46 = call i32 @dbFree(%struct.inode* %39, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %38, %23
  br label %48

48:                                               ; preds = %47, %16
  br label %49

49:                                               ; preds = %48, %11
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @release_metapage(i32) #1

declare dso_local i32 @dbFree(%struct.inode*, i32, i32) #1

declare dso_local i32 @addressDXD(i32*) #1

declare dso_local i32 @lengthDXD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
