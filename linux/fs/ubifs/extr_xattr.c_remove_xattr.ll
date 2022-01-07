; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_remove_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_remove_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.inode = type { i64, i32 }
%struct.fscrypt_name = type { i32 }
%struct.ubifs_inode = type { i64, i32, i32, i32, i32 }
%struct.ubifs_budget_req = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.inode*, %struct.inode*, %struct.fscrypt_name*)* @remove_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_xattr(%struct.ubifs_info* %0, %struct.inode* %1, %struct.inode* %2, %struct.fscrypt_name* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.fscrypt_name*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_inode*, align 8
  %12 = alloca %struct.ubifs_inode*, align 8
  %13 = alloca %struct.ubifs_budget_req, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.fscrypt_name* %3, %struct.fscrypt_name** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %14)
  store %struct.ubifs_inode* %15, %struct.ubifs_inode** %11, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %16)
  store %struct.ubifs_inode* %17, %struct.ubifs_inode** %12, align 8
  %18 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %13, i32 0, i32 0
  store i32 2, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %13, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %13, i32 0, i32 2
  %21 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %22 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @ALIGN(i64 %23, i32 8)
  store i32 %24, i32* %20, align 4
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %26 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %27 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @ubifs_assert(%struct.ubifs_info* %25, i32 %33)
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %36 = call i32 @ubifs_budget_space(%struct.ubifs_info* %35, %struct.ubifs_budget_req* %13)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %4
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %134

41:                                               ; preds = %4
  %42 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %43 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %42, i32 0, i32 2
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = call i32 @current_time(%struct.inode* %45)
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %50 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %54 = call i64 @fname_len(%struct.fscrypt_name* %53)
  %55 = call i64 @CALC_DENT_SIZE(i64 %54)
  %56 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %57 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  %62 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %63 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @CALC_XATTR_BYTES(i64 %64)
  %66 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %67 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  %72 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %73 = call i64 @fname_len(%struct.fscrypt_name* %72)
  %74 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %75 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %81 = load %struct.inode*, %struct.inode** %7, align 8
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %84 = call i32 @ubifs_jnl_delete_xattr(%struct.ubifs_info* %80, %struct.inode* %81, %struct.inode* %82, %struct.fscrypt_name* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %41
  br label %94

88:                                               ; preds = %41
  %89 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %90 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %89, i32 0, i32 2
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %93 = call i32 @ubifs_release_budget(%struct.ubifs_info* %92, %struct.ubifs_budget_req* %13)
  store i32 0, i32* %5, align 4
  br label %134

94:                                               ; preds = %87
  %95 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %96 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %100 = call i64 @fname_len(%struct.fscrypt_name* %99)
  %101 = call i64 @CALC_DENT_SIZE(i64 %100)
  %102 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %103 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %101
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 4
  %108 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %109 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @CALC_XATTR_BYTES(i64 %110)
  %112 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %113 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 4
  %118 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %119 = call i64 @fname_len(%struct.fscrypt_name* %118)
  %120 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %121 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %119
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 8
  %126 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %127 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %126, i32 0, i32 2
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %130 = call i32 @ubifs_release_budget(%struct.ubifs_info* %129, %struct.ubifs_budget_req* %13)
  %131 = load %struct.inode*, %struct.inode** %8, align 8
  %132 = call i32 @make_bad_inode(%struct.inode* %131)
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %94, %88, %39
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i64 @CALC_DENT_SIZE(i64) #1

declare dso_local i64 @fname_len(%struct.fscrypt_name*) #1

declare dso_local i64 @CALC_XATTR_BYTES(i64) #1

declare dso_local i32 @ubifs_jnl_delete_xattr(%struct.ubifs_info*, %struct.inode*, %struct.inode*, %struct.fscrypt_name*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
