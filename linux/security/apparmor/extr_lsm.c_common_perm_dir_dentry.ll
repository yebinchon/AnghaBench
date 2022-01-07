; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_common_perm_dir_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_common_perm_dir_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry*, i32 }
%struct.dentry = type { i32 }
%struct.path_cond = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.path*, %struct.dentry*, i32, %struct.path_cond*)* @common_perm_dir_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_perm_dir_dentry(i8* %0, %struct.path* %1, %struct.dentry* %2, i32 %3, %struct.path_cond* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.path_cond*, align 8
  %11 = alloca %struct.path, align 8
  store i8* %0, i8** %6, align 8
  store %struct.path* %1, %struct.path** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.path_cond* %4, %struct.path_cond** %10, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %13, %struct.dentry** %12, align 8
  %14 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 1
  %15 = load %struct.path*, %struct.path** %7, align 8
  %16 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %14, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.path_cond*, %struct.path_cond** %10, align 8
  %21 = call i32 @common_perm(i8* %18, %struct.path* %11, i32 %19, %struct.path_cond* %20)
  ret i32 %21
}

declare dso_local i32 @common_perm(i8*, %struct.path*, i32, %struct.path_cond*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
