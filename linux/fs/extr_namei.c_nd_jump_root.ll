; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_nd_jump_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_nd_jump_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.TYPE_3__, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { i32, i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@LOOKUP_JUMPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*)* @nd_jump_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_jump_root(%struct.nameidata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  %5 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %6 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @LOOKUP_RCU, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %13 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 1
  %14 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %15 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 3
  %16 = bitcast %struct.TYPE_3__* %13 to i8*
  %17 = bitcast %struct.TYPE_3__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %19 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.dentry*, %struct.dentry** %20, align 8
  store %struct.dentry* %21, %struct.dentry** %4, align 8
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %26 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %28 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %31 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 1
  %34 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @read_seqcount_retry(i32* %33, i32 %36)
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %11
  %41 = load i32, i32* @ECHILD, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %71

43:                                               ; preds = %11
  br label %65

44:                                               ; preds = %1
  %45 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %46 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %45, i32 0, i32 1
  %47 = call i32 @path_put(%struct.TYPE_3__* %46)
  %48 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %49 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %48, i32 0, i32 1
  %50 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %51 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %50, i32 0, i32 3
  %52 = bitcast %struct.TYPE_3__* %49 to i8*
  %53 = bitcast %struct.TYPE_3__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 8, i1 false)
  %54 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %55 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %54, i32 0, i32 1
  %56 = call i32 @path_get(%struct.TYPE_3__* %55)
  %57 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %58 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.dentry*, %struct.dentry** %59, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %64 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %44, %43
  %66 = load i32, i32* @LOOKUP_JUMPED, align 4
  %67 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %68 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %65, %40
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @read_seqcount_retry(i32*, i32) #2

declare dso_local i32 @path_put(%struct.TYPE_3__*) #2

declare dso_local i32 @path_get(%struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
