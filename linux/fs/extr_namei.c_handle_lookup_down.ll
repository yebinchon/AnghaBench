; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_handle_lookup_down.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_handle_lookup_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, i32, %struct.inode*, %struct.path }
%struct.inode = type { i32 }
%struct.path = type { i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*)* @handle_lookup_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_lookup_down(%struct.nameidata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca %struct.path, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  %8 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %9 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 3
  %10 = bitcast %struct.path* %4 to i8*
  %11 = bitcast %struct.path* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 8 %11, i64 4, i1 false)
  %12 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %13 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 2
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %5, align 8
  %15 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %16 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %19 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LOOKUP_RCU, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  %25 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %26 = call i32 @__follow_mount_rcu(%struct.nameidata* %25, %struct.path* %4, %struct.inode** %5, i32* %6)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @ECHILD, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %62

35:                                               ; preds = %24
  br label %53

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.path, %struct.path* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dget(i32 %38)
  %40 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %41 = call i32 @follow_managed(%struct.path* %4, %struct.nameidata* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %62

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.path, %struct.path* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.inode* @d_backing_inode(i32 %51)
  store %struct.inode* %52, %struct.inode** %5, align 8
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %35
  %54 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %55 = call i32 @path_to_nameidata(%struct.path* %4, %struct.nameidata* %54)
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %58 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %57, i32 0, i32 2
  store %struct.inode* %56, %struct.inode** %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %61 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %53, %47, %32
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @__follow_mount_rcu(%struct.nameidata*, %struct.path*, %struct.inode**, i32*) #2

declare dso_local i32 @dget(i32) #2

declare dso_local i32 @follow_managed(%struct.path*, %struct.nameidata*) #2

declare dso_local %struct.inode* @d_backing_inode(i32) #2

declare dso_local i32 @path_to_nameidata(%struct.path*, %struct.nameidata*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
