; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_path_next.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_path_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.ovl_entry* }
%struct.ovl_entry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.path = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_path_next(i32 %0, %struct.dentry* %1, %struct.path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca %struct.ovl_entry*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.path* %2, %struct.path** %7, align 8
  %9 = load %struct.dentry*, %struct.dentry** %6, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.ovl_entry*, %struct.ovl_entry** %10, align 8
  store %struct.ovl_entry* %11, %struct.ovl_entry** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = load %struct.path*, %struct.path** %7, align 8
  %21 = call i32 @ovl_path_upper(%struct.dentry* %19, %struct.path* %20)
  %22 = load %struct.path*, %struct.path** %7, align 8
  %23 = getelementptr inbounds %struct.path, %struct.path* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.ovl_entry*, %struct.ovl_entry** %8, align 8
  %28 = getelementptr inbounds %struct.ovl_entry, %struct.ovl_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 -1
  store i32 %32, i32* %4, align 4
  br label %79

33:                                               ; preds = %18
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %3
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ovl_entry*, %struct.ovl_entry** %8, align 8
  %39 = getelementptr inbounds %struct.ovl_entry, %struct.ovl_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.ovl_entry*, %struct.ovl_entry** %8, align 8
  %45 = getelementptr inbounds %struct.ovl_entry, %struct.ovl_entry* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.path*, %struct.path** %7, align 8
  %54 = getelementptr inbounds %struct.path, %struct.path* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ovl_entry*, %struct.ovl_entry** %8, align 8
  %56 = getelementptr inbounds %struct.ovl_entry, %struct.ovl_entry* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.path*, %struct.path** %7, align 8
  %67 = getelementptr inbounds %struct.path, %struct.path* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.ovl_entry*, %struct.ovl_entry** %8, align 8
  %70 = getelementptr inbounds %struct.ovl_entry, %struct.ovl_entry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %36
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  br label %77

76:                                               ; preds = %36
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i32 [ %75, %73 ], [ -1, %76 ]
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %26
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ovl_path_upper(%struct.dentry*, %struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
