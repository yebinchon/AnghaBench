; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_hash_and_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_hash_and_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dentry*, %struct.qstr*)* }
%struct.qstr = type { i32, i32, i32 }

@DCACHE_OP_HASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @d_hash_and_lookup(%struct.dentry* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = load %struct.qstr*, %struct.qstr** %5, align 8
  %9 = getelementptr inbounds %struct.qstr, %struct.qstr* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.qstr*, %struct.qstr** %5, align 8
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @full_name_hash(%struct.dentry* %7, i32 %10, i32 %13)
  %15 = load %struct.qstr*, %struct.qstr** %5, align 8
  %16 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DCACHE_OP_HASH, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %2
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, %struct.qstr*)** %27, align 8
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = load %struct.qstr*, %struct.qstr** %5, align 8
  %31 = call i32 %28(%struct.dentry* %29, %struct.qstr* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.dentry* @ERR_PTR(i32 %38)
  store %struct.dentry* %39, %struct.dentry** %3, align 8
  br label %45

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.dentry*, %struct.dentry** %4, align 8
  %43 = load %struct.qstr*, %struct.qstr** %5, align 8
  %44 = call %struct.dentry* @d_lookup(%struct.dentry* %42, %struct.qstr* %43)
  store %struct.dentry* %44, %struct.dentry** %3, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %46
}

declare dso_local i32 @full_name_hash(%struct.dentry*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
