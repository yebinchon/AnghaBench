; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_run_li_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_run_li_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_li_request = type { i64, i64, i64, %struct.TYPE_3__*, %struct.super_block* }
%struct.TYPE_3__ = type { i64 }
%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.TYPE_4__ = type { i64 }

@EXT4_BG_INODE_ZEROED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_li_request*)* @ext4_run_li_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_run_li_request(%struct.ext4_li_request* %0) #0 {
  %2 = alloca %struct.ext4_li_request*, align 8
  %3 = alloca %struct.ext4_group_desc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ext4_li_request* %0, %struct.ext4_li_request** %2, align 8
  store %struct.ext4_group_desc* null, %struct.ext4_group_desc** %3, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %10 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %9, i32 0, i32 4
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %6, align 8
  %12 = load %struct.super_block*, %struct.super_block** %6, align 8
  %13 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %17 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %40, %1
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load %struct.super_block*, %struct.super_block** %6, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %24, i64 %25, i32* null)
  store %struct.ext4_group_desc* %26, %struct.ext4_group_desc** %3, align 8
  %27 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %3, align 8
  %28 = icmp ne %struct.ext4_group_desc* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 1, i32* %8, align 4
  br label %43

30:                                               ; preds = %23
  %31 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %3, align 8
  %32 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EXT4_BG_INODE_ZEROED, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %43

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %4, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %19

43:                                               ; preds = %38, %29, %19
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %91, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* @jiffies, align 8
  store i64 %52, i64* %7, align 8
  %53 = load %struct.super_block*, %struct.super_block** %6, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %56 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 0, i32 1
  %61 = call i32 @ext4_init_inode_table(%struct.super_block* %53, i64 %54, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %63 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %51
  %67 = load i64, i64* @jiffies, align 8
  %68 = load i64, i64* %7, align 8
  %69 = sub i64 %67, %68
  %70 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %71 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = mul i64 %69, %74
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %78 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %66, %51
  %80 = load i64, i64* @jiffies, align 8
  %81 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %82 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %80, %83
  %85 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %86 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* %4, align 8
  %88 = add nsw i64 %87, 1
  %89 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %90 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %79, %48
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_4__* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i64, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_init_inode_table(%struct.super_block*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
