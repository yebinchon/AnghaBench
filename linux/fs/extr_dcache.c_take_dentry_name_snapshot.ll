; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_take_dentry_name_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_take_dentry_name_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_snapshot = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.dentry = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @take_dentry_name_snapshot(%struct.name_snapshot* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.name_snapshot*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.name_snapshot* %0, %struct.name_snapshot** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %5 = load %struct.dentry*, %struct.dentry** %4, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.name_snapshot*, %struct.name_snapshot** %3, align 8
  %9 = getelementptr inbounds %struct.name_snapshot, %struct.name_snapshot* %8, i32 0, i32 1
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 1
  %12 = bitcast %struct.TYPE_4__* %9 to i8*
  %13 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = call i32 @dname_external(%struct.dentry* %14)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = call %struct.TYPE_6__* @external_name(%struct.dentry* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @atomic_inc(i32* %22)
  br label %43

24:                                               ; preds = %2
  %25 = load %struct.name_snapshot*, %struct.name_snapshot** %3, align 8
  %26 = getelementptr inbounds %struct.name_snapshot, %struct.name_snapshot* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i32 @memcpy(i32 %27, i32 %30, i64 %35)
  %37 = load %struct.name_snapshot*, %struct.name_snapshot** %3, align 8
  %38 = getelementptr inbounds %struct.name_snapshot, %struct.name_snapshot* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.name_snapshot*, %struct.name_snapshot** %3, align 8
  %41 = getelementptr inbounds %struct.name_snapshot, %struct.name_snapshot* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  br label %43

43:                                               ; preds = %24, %18
  %44 = load %struct.dentry*, %struct.dentry** %4, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dname_external(%struct.dentry*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_6__* @external_name(%struct.dentry*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
