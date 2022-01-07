; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_rawdata_get_link_base.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_rawdata_get_link_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { %struct.aa_proxy* }
%struct.aa_proxy = type { i32 }
%struct.delayed_call = type { i32 }
%struct.aa_label = type { i32 }
%struct.aa_profile = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ECHILD = common dso_local global i32 0, align 4
@rawdata_link_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*, i8*)* @rawdata_get_link_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rawdata_get_link_base(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.delayed_call*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.aa_proxy*, align 8
  %11 = alloca %struct.aa_label*, align 8
  %12 = alloca %struct.aa_profile*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.aa_proxy*, %struct.aa_proxy** %16, align 8
  store %struct.aa_proxy* %17, %struct.aa_proxy** %10, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = icmp ne %struct.dentry* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ECHILD, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i8* @ERR_PTR(i32 %22)
  store i8* %23, i8** %5, align 8
  br label %53

24:                                               ; preds = %4
  %25 = load %struct.aa_proxy*, %struct.aa_proxy** %10, align 8
  %26 = getelementptr inbounds %struct.aa_proxy, %struct.aa_proxy* %25, i32 0, i32 0
  %27 = call %struct.aa_label* @aa_get_label_rcu(i32* %26)
  store %struct.aa_label* %27, %struct.aa_label** %11, align 8
  %28 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %29 = call %struct.aa_profile* @labels_profile(%struct.aa_label* %28)
  store %struct.aa_profile* %29, %struct.aa_profile** %12, align 8
  %30 = load %struct.aa_profile*, %struct.aa_profile** %12, align 8
  %31 = call i32 @profile_depth(%struct.aa_profile* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.aa_profile*, %struct.aa_profile** %12, align 8
  %34 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = call i8* @gen_symlink_name(i32 %32, i32 %37, i8* %38)
  store i8* %39, i8** %13, align 8
  %40 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %41 = call i32 @aa_put_label(%struct.aa_label* %40)
  %42 = load i8*, i8** %13, align 8
  %43 = call i64 @IS_ERR(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %24
  %46 = load i8*, i8** %13, align 8
  store i8* %46, i8** %5, align 8
  br label %53

47:                                               ; preds = %24
  %48 = load %struct.delayed_call*, %struct.delayed_call** %8, align 8
  %49 = load i32, i32* @rawdata_link_cb, align 4
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @set_delayed_call(%struct.delayed_call* %48, i32 %49, i8* %50)
  %52 = load i8*, i8** %13, align 8
  store i8* %52, i8** %5, align 8
  br label %53

53:                                               ; preds = %47, %45, %20
  %54 = load i8*, i8** %5, align 8
  ret i8* %54
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local %struct.aa_label* @aa_get_label_rcu(i32*) #1

declare dso_local %struct.aa_profile* @labels_profile(%struct.aa_label*) #1

declare dso_local i32 @profile_depth(%struct.aa_profile*) #1

declare dso_local i8* @gen_symlink_name(i32, i32, i8*) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @set_delayed_call(%struct.delayed_call*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
