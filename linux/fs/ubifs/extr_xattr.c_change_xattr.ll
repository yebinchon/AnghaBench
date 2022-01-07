; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_change_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_change_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ubifs_inode = type { i32, i32, i32, i32, i8* }
%struct.ubifs_budget_req = type { i32, i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.inode*, %struct.inode*, i8*, i32)* @change_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_xattr(%struct.ubifs_info* %0, %struct.inode* %1, %struct.inode* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ubifs_inode*, align 8
  %14 = alloca %struct.ubifs_inode*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ubifs_budget_req, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %18)
  store %struct.ubifs_inode* %19, %struct.ubifs_inode** %13, align 8
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %20)
  store %struct.ubifs_inode* %21, %struct.ubifs_inode** %14, align 8
  store i8* null, i8** %15, align 8
  %22 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %17, i32 0, i32 0
  store i32 2, i32* %22, align 8
  %23 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %17, i32 0, i32 1
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @ALIGN(i32 %24, i32 8)
  %26 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %27 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @ALIGN(i32 %28, i32 8)
  %30 = add nsw i64 %25, %29
  store i64 %30, i64* %23, align 8
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %32 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %33 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ubifs_assert(%struct.ubifs_info* %31, i32 %39)
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %42 = call i32 @ubifs_budget_space(%struct.ubifs_info* %41, %struct.ubifs_budget_req* %17)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %5
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %6, align 4
  br label %144

47:                                               ; preds = %5
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @GFP_NOFS, align 4
  %51 = call i8* @kmemdup(i8* %48, i32 %49, i32 %50)
  store i8* %51, i8** %15, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %140

57:                                               ; preds = %47
  %58 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %59 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %58, i32 0, i32 2
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %62 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @kfree(i8* %63)
  %65 = load i8*, i8** %15, align 8
  %66 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %67 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %70 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.inode*, %struct.inode** %9, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  %73 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %74 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %78 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %80 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %79, i32 0, i32 2
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %83 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %82, i32 0, i32 2
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = call i32 @current_time(%struct.inode* %85)
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i64 @CALC_XATTR_BYTES(i32 %89)
  %91 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %92 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i64 @CALC_XATTR_BYTES(i32 %97)
  %99 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %100 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %106 = load %struct.inode*, %struct.inode** %9, align 8
  %107 = load %struct.inode*, %struct.inode** %8, align 8
  %108 = call i32 @ubifs_jnl_change_xattr(%struct.ubifs_info* %105, %struct.inode* %106, %struct.inode* %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %57
  br label %118

112:                                              ; preds = %57
  %113 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %114 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %113, i32 0, i32 2
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %117 = call i32 @ubifs_release_budget(%struct.ubifs_info* %116, %struct.ubifs_budget_req* %17)
  store i32 0, i32* %6, align 4
  br label %144

118:                                              ; preds = %111
  %119 = load i32, i32* %11, align 4
  %120 = call i64 @CALC_XATTR_BYTES(i32 %119)
  %121 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %122 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = sub nsw i64 %124, %120
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 4
  %127 = load i32, i32* %16, align 4
  %128 = call i64 @CALC_XATTR_BYTES(i32 %127)
  %129 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %130 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %128
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %130, align 4
  %135 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %136 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %135, i32 0, i32 2
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = load %struct.inode*, %struct.inode** %9, align 8
  %139 = call i32 @make_bad_inode(%struct.inode* %138)
  br label %140

140:                                              ; preds = %118, %54
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %142 = call i32 @ubifs_release_budget(%struct.ubifs_info* %141, %struct.ubifs_budget_req* %17)
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %140, %112, %45
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i64 @CALC_XATTR_BYTES(i32) #1

declare dso_local i32 @ubifs_jnl_change_xattr(%struct.ubifs_info*, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
