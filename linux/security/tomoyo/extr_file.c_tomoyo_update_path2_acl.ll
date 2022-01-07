; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_update_path2_acl.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_update_path2_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { i32 }
%struct.tomoyo_path2_acl = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@TOMOYO_TYPE_PATH2_ACL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tomoyo_same_path2_acl = common dso_local global i32 0, align 4
@tomoyo_merge_path2_acl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tomoyo_acl_param*)* @tomoyo_update_path2_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_update_path2_acl(i32 %0, %struct.tomoyo_acl_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_acl_param*, align 8
  %5 = alloca %struct.tomoyo_path2_acl, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.tomoyo_acl_param* %1, %struct.tomoyo_acl_param** %4, align 8
  %7 = getelementptr inbounds %struct.tomoyo_path2_acl, %struct.tomoyo_path2_acl* %5, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.tomoyo_path2_acl, %struct.tomoyo_path2_acl* %5, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.tomoyo_path2_acl, %struct.tomoyo_path2_acl* %5, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* @TOMOYO_TYPE_PATH2_ACL, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.tomoyo_path2_acl, %struct.tomoyo_path2_acl* %5, i32 0, i32 3
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %15 = getelementptr inbounds %struct.tomoyo_path2_acl, %struct.tomoyo_path2_acl* %5, i32 0, i32 1
  %16 = call i32 @tomoyo_parse_name_union(%struct.tomoyo_acl_param* %14, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %20 = getelementptr inbounds %struct.tomoyo_path2_acl, %struct.tomoyo_path2_acl* %5, i32 0, i32 0
  %21 = call i32 @tomoyo_parse_name_union(%struct.tomoyo_acl_param* %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %32

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.tomoyo_path2_acl, %struct.tomoyo_path2_acl* %5, i32 0, i32 2
  %28 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %29 = load i32, i32* @tomoyo_same_path2_acl, align 4
  %30 = load i32, i32* @tomoyo_merge_path2_acl, align 4
  %31 = call i32 @tomoyo_update_domain(%struct.TYPE_2__* %27, i32 16, %struct.tomoyo_acl_param* %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = getelementptr inbounds %struct.tomoyo_path2_acl, %struct.tomoyo_path2_acl* %5, i32 0, i32 1
  %34 = call i32 @tomoyo_put_name_union(i32* %33)
  %35 = getelementptr inbounds %struct.tomoyo_path2_acl, %struct.tomoyo_path2_acl* %5, i32 0, i32 0
  %36 = call i32 @tomoyo_put_name_union(i32* %35)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @tomoyo_parse_name_union(%struct.tomoyo_acl_param*, i32*) #1

declare dso_local i32 @tomoyo_update_domain(%struct.TYPE_2__*, i32, %struct.tomoyo_acl_param*, i32, i32) #1

declare dso_local i32 @tomoyo_put_name_union(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
