; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_same_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_same_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 (%struct.dentry*, i64, i32, %struct.qstr*)* }
%struct.qstr = type { i64, i32 }

@DCACHE_OP_COMPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.dentry*, %struct.qstr*)* @d_same_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d_same_name(%struct.dentry* %0, %struct.dentry* %1, %struct.qstr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.qstr*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  %8 = load %struct.dentry*, %struct.dentry** %6, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @DCACHE_OP_COMPARE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.qstr*, %struct.qstr** %7, align 8
  %24 = getelementptr inbounds %struct.qstr, %struct.qstr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %58

28:                                               ; preds = %18
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = load %struct.qstr*, %struct.qstr** %7, align 8
  %31 = getelementptr inbounds %struct.qstr, %struct.qstr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qstr*, %struct.qstr** %7, align 8
  %34 = getelementptr inbounds %struct.qstr, %struct.qstr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @dentry_cmp(%struct.dentry* %29, i32 %32, i64 %35)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %58

39:                                               ; preds = %3
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64 (%struct.dentry*, i64, i32, %struct.qstr*)*, i64 (%struct.dentry*, i64, i32, %struct.qstr*)** %43, align 8
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = load %struct.dentry*, %struct.dentry** %5, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = getelementptr inbounds %struct.dentry, %struct.dentry* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.qstr*, %struct.qstr** %7, align 8
  %55 = call i64 %44(%struct.dentry* %45, i64 %49, i32 %53, %struct.qstr* %54)
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %39, %28, %27
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @dentry_cmp(%struct.dentry*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
