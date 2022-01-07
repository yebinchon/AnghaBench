; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_update_extra_perms.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_update_extra_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.udf_inode_info = type { i32 }

@FE_DELETE_PERMS = common dso_local global i32 0, align 4
@FE_PERM_U_DELETE = common dso_local global i32 0, align 4
@FE_PERM_G_DELETE = common dso_local global i32 0, align 4
@FE_PERM_O_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_update_extra_perms(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %6)
  store %struct.udf_inode_info* %7, %struct.udf_inode_info** %5, align 8
  %8 = load i32, i32* @FE_DELETE_PERMS, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.udf_inode_info*, %struct.udf_inode_info** %5, align 8
  %11 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 128
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @FE_PERM_U_DELETE, align 4
  %19 = load %struct.udf_inode_info*, %struct.udf_inode_info** %5, align 8
  %20 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %17, %2
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 16
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @FE_PERM_G_DELETE, align 4
  %29 = load %struct.udf_inode_info*, %struct.udf_inode_info** %5, align 8
  %30 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %23
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @FE_PERM_O_DELETE, align 4
  %39 = load %struct.udf_inode_info*, %struct.udf_inode_info** %5, align 8
  %40 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %33
  ret void
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
