; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_update_mkdev_acl.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_update_mkdev_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { i32 }
%struct.tomoyo_mkdev_acl = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@TOMOYO_TYPE_MKDEV_ACL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tomoyo_same_mkdev_acl = common dso_local global i32 0, align 4
@tomoyo_merge_mkdev_acl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tomoyo_acl_param*)* @tomoyo_update_mkdev_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_update_mkdev_acl(i32 %0, %struct.tomoyo_acl_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_acl_param*, align 8
  %5 = alloca %struct.tomoyo_mkdev_acl, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.tomoyo_acl_param* %1, %struct.tomoyo_acl_param** %4, align 8
  %7 = getelementptr inbounds %struct.tomoyo_mkdev_acl, %struct.tomoyo_mkdev_acl* %5, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.tomoyo_mkdev_acl, %struct.tomoyo_mkdev_acl* %5, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.tomoyo_mkdev_acl, %struct.tomoyo_mkdev_acl* %5, i32 0, i32 2
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.tomoyo_mkdev_acl, %struct.tomoyo_mkdev_acl* %5, i32 0, i32 3
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.tomoyo_mkdev_acl, %struct.tomoyo_mkdev_acl* %5, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* @TOMOYO_TYPE_MKDEV_ACL, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.tomoyo_mkdev_acl, %struct.tomoyo_mkdev_acl* %5, i32 0, i32 5
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %17 = getelementptr inbounds %struct.tomoyo_mkdev_acl, %struct.tomoyo_mkdev_acl* %5, i32 0, i32 3
  %18 = call i32 @tomoyo_parse_name_union(%struct.tomoyo_acl_param* %16, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %22 = getelementptr inbounds %struct.tomoyo_mkdev_acl, %struct.tomoyo_mkdev_acl* %5, i32 0, i32 2
  %23 = call i32 @tomoyo_parse_number_union(%struct.tomoyo_acl_param* %21, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %27 = getelementptr inbounds %struct.tomoyo_mkdev_acl, %struct.tomoyo_mkdev_acl* %5, i32 0, i32 1
  %28 = call i32 @tomoyo_parse_number_union(%struct.tomoyo_acl_param* %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %32 = getelementptr inbounds %struct.tomoyo_mkdev_acl, %struct.tomoyo_mkdev_acl* %5, i32 0, i32 0
  %33 = call i32 @tomoyo_parse_number_union(%struct.tomoyo_acl_param* %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %25, %20, %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %44

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.tomoyo_mkdev_acl, %struct.tomoyo_mkdev_acl* %5, i32 0, i32 4
  %40 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %41 = load i32, i32* @tomoyo_same_mkdev_acl, align 4
  %42 = load i32, i32* @tomoyo_merge_mkdev_acl, align 4
  %43 = call i32 @tomoyo_update_domain(%struct.TYPE_2__* %39, i32 24, %struct.tomoyo_acl_param* %40, i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %38, %35
  %45 = getelementptr inbounds %struct.tomoyo_mkdev_acl, %struct.tomoyo_mkdev_acl* %5, i32 0, i32 3
  %46 = call i32 @tomoyo_put_name_union(i32* %45)
  %47 = getelementptr inbounds %struct.tomoyo_mkdev_acl, %struct.tomoyo_mkdev_acl* %5, i32 0, i32 2
  %48 = call i32 @tomoyo_put_number_union(i32* %47)
  %49 = getelementptr inbounds %struct.tomoyo_mkdev_acl, %struct.tomoyo_mkdev_acl* %5, i32 0, i32 1
  %50 = call i32 @tomoyo_put_number_union(i32* %49)
  %51 = getelementptr inbounds %struct.tomoyo_mkdev_acl, %struct.tomoyo_mkdev_acl* %5, i32 0, i32 0
  %52 = call i32 @tomoyo_put_number_union(i32* %51)
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @tomoyo_parse_name_union(%struct.tomoyo_acl_param*, i32*) #1

declare dso_local i32 @tomoyo_parse_number_union(%struct.tomoyo_acl_param*, i32*) #1

declare dso_local i32 @tomoyo_update_domain(%struct.TYPE_2__*, i32, %struct.tomoyo_acl_param*, i32, i32) #1

declare dso_local i32 @tomoyo_put_name_union(i32*) #1

declare dso_local i32 @tomoyo_put_number_union(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
