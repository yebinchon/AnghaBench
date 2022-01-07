; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_stat.c_generic_fillattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_stat.c_generic_fillattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kstat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generic_fillattr(%struct.inode* %0, %struct.kstat* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.kstat*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.kstat* %1, %struct.kstat** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 10
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.kstat*, %struct.kstat** %4, align 8
  %11 = getelementptr inbounds %struct.kstat, %struct.kstat* %10, i32 0, i32 12
  store i32 %9, i32* %11, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kstat*, %struct.kstat** %4, align 8
  %16 = getelementptr inbounds %struct.kstat, %struct.kstat* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 4
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.kstat*, %struct.kstat** %4, align 8
  %21 = getelementptr inbounds %struct.kstat, %struct.kstat* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 4
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.kstat*, %struct.kstat** %4, align 8
  %26 = getelementptr inbounds %struct.kstat, %struct.kstat* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 4
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.kstat*, %struct.kstat** %4, align 8
  %31 = getelementptr inbounds %struct.kstat, %struct.kstat* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.kstat*, %struct.kstat** %4, align 8
  %36 = getelementptr inbounds %struct.kstat, %struct.kstat* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.kstat*, %struct.kstat** %4, align 8
  %41 = getelementptr inbounds %struct.kstat, %struct.kstat* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = call i32 @i_size_read(%struct.inode* %42)
  %44 = load %struct.kstat*, %struct.kstat** %4, align 8
  %45 = getelementptr inbounds %struct.kstat, %struct.kstat* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.kstat*, %struct.kstat** %4, align 8
  %50 = getelementptr inbounds %struct.kstat, %struct.kstat* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.kstat*, %struct.kstat** %4, align 8
  %55 = getelementptr inbounds %struct.kstat, %struct.kstat* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.kstat*, %struct.kstat** %4, align 8
  %60 = getelementptr inbounds %struct.kstat, %struct.kstat* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = call i32 @i_blocksize(%struct.inode* %61)
  %63 = load %struct.kstat*, %struct.kstat** %4, align 8
  %64 = getelementptr inbounds %struct.kstat, %struct.kstat* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.kstat*, %struct.kstat** %4, align 8
  %69 = getelementptr inbounds %struct.kstat, %struct.kstat* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  ret void
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
