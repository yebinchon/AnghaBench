; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_dbg_check_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_dbg_check_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_dent_node = type { i32, i32 }
%struct.fscrypt_name = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_dent_node*, %struct.fscrypt_name*)* @dbg_check_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbg_check_name(%struct.ubifs_info* %0, %struct.ubifs_dent_node* %1, %struct.fscrypt_name* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_dent_node*, align 8
  %7 = alloca %struct.fscrypt_name*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_dent_node* %1, %struct.ubifs_dent_node** %6, align 8
  store %struct.fscrypt_name* %2, %struct.fscrypt_name** %7, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %9 = call i32 @dbg_is_chk_gen(%struct.ubifs_info* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

12:                                               ; preds = %3
  %13 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %6, align 8
  %14 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @le16_to_cpu(i32 %15)
  %17 = load %struct.fscrypt_name*, %struct.fscrypt_name** %7, align 8
  %18 = call i64 @fname_len(%struct.fscrypt_name* %17)
  %19 = icmp ne i64 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %37

23:                                               ; preds = %12
  %24 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %6, align 8
  %25 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fscrypt_name*, %struct.fscrypt_name** %7, align 8
  %28 = call i32 @fname_name(%struct.fscrypt_name* %27)
  %29 = load %struct.fscrypt_name*, %struct.fscrypt_name** %7, align 8
  %30 = call i64 @fname_len(%struct.fscrypt_name* %29)
  %31 = call i64 @memcmp(i32 %26, i32 %28, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %33, %20, %11
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @dbg_is_chk_gen(%struct.ubifs_info*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @fname_len(%struct.fscrypt_name*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @fname_name(%struct.fscrypt_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
