; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_copy_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_copy_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.dentry = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.external_name = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@u = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.dentry*)* @copy_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_name(%struct.dentry* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.external_name*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  store %struct.external_name* null, %struct.external_name** %5, align 8
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = call i32 @dname_external(%struct.dentry* %6)
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = call %struct.external_name* @external_name(%struct.dentry* %11)
  store %struct.external_name* %12, %struct.external_name** %5, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = call i32 @dname_external(%struct.dentry* %14)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = call %struct.external_name* @external_name(%struct.dentry* %19)
  %21 = getelementptr inbounds %struct.external_name, %struct.external_name* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @atomic_inc(i32* %22)
  %24 = load %struct.dentry*, %struct.dentry** %3, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = bitcast %struct.TYPE_4__* %25 to i8*
  %29 = bitcast %struct.TYPE_4__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false)
  br label %57

30:                                               ; preds = %13
  %31 = load %struct.dentry*, %struct.dentry** %3, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dentry*, %struct.dentry** %4, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  %43 = call i32 @memcpy(i32 %33, i32 %37, i64 %42)
  %44 = load %struct.dentry*, %struct.dentry** %3, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.dentry*, %struct.dentry** %3, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.dentry*, %struct.dentry** %4, align 8
  %51 = getelementptr inbounds %struct.dentry, %struct.dentry* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dentry*, %struct.dentry** %3, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  br label %57

57:                                               ; preds = %30, %18
  %58 = load %struct.external_name*, %struct.external_name** %5, align 8
  %59 = icmp ne %struct.external_name* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.external_name*, %struct.external_name** %5, align 8
  %62 = getelementptr inbounds %struct.external_name, %struct.external_name* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @atomic_dec_and_test(i32* %63)
  %65 = call i64 @likely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.external_name*, %struct.external_name** %5, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @u, i32 0, i32 0), align 4
  %70 = call i32 @kfree_rcu(%struct.external_name* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %60, %57
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dname_external(%struct.dentry*) #1

declare dso_local %struct.external_name* @external_name(%struct.dentry*) #1

declare dso_local i32 @atomic_inc(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.external_name*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
