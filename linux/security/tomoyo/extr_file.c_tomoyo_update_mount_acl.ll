; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_update_mount_acl.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_update_mount_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { i32 }
%struct.tomoyo_mount_acl = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TOMOYO_TYPE_MOUNT_ACL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tomoyo_same_mount_acl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_acl_param*)* @tomoyo_update_mount_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_update_mount_acl(%struct.tomoyo_acl_param* %0) #0 {
  %2 = alloca %struct.tomoyo_acl_param*, align 8
  %3 = alloca %struct.tomoyo_mount_acl, align 4
  %4 = alloca i32, align 4
  store %struct.tomoyo_acl_param* %0, %struct.tomoyo_acl_param** %2, align 8
  %5 = bitcast %struct.tomoyo_mount_acl* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 20, i1 false)
  %6 = getelementptr inbounds %struct.tomoyo_mount_acl, %struct.tomoyo_mount_acl* %3, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* @TOMOYO_TYPE_MOUNT_ACL, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %2, align 8
  %10 = getelementptr inbounds %struct.tomoyo_mount_acl, %struct.tomoyo_mount_acl* %3, i32 0, i32 3
  %11 = call i32 @tomoyo_parse_name_union(%struct.tomoyo_acl_param* %9, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %2, align 8
  %15 = getelementptr inbounds %struct.tomoyo_mount_acl, %struct.tomoyo_mount_acl* %3, i32 0, i32 2
  %16 = call i32 @tomoyo_parse_name_union(%struct.tomoyo_acl_param* %14, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %2, align 8
  %20 = getelementptr inbounds %struct.tomoyo_mount_acl, %struct.tomoyo_mount_acl* %3, i32 0, i32 1
  %21 = call i32 @tomoyo_parse_name_union(%struct.tomoyo_acl_param* %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %2, align 8
  %25 = getelementptr inbounds %struct.tomoyo_mount_acl, %struct.tomoyo_mount_acl* %3, i32 0, i32 0
  %26 = call i32 @tomoyo_parse_number_union(%struct.tomoyo_acl_param* %24, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %18, %13, %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.tomoyo_mount_acl, %struct.tomoyo_mount_acl* %3, i32 0, i32 4
  %33 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %2, align 8
  %34 = load i32, i32* @tomoyo_same_mount_acl, align 4
  %35 = call i32 @tomoyo_update_domain(%struct.TYPE_2__* %32, i32 20, %struct.tomoyo_acl_param* %33, i32 %34, i32* null)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %28
  %37 = getelementptr inbounds %struct.tomoyo_mount_acl, %struct.tomoyo_mount_acl* %3, i32 0, i32 3
  %38 = call i32 @tomoyo_put_name_union(i32* %37)
  %39 = getelementptr inbounds %struct.tomoyo_mount_acl, %struct.tomoyo_mount_acl* %3, i32 0, i32 2
  %40 = call i32 @tomoyo_put_name_union(i32* %39)
  %41 = getelementptr inbounds %struct.tomoyo_mount_acl, %struct.tomoyo_mount_acl* %3, i32 0, i32 1
  %42 = call i32 @tomoyo_put_name_union(i32* %41)
  %43 = getelementptr inbounds %struct.tomoyo_mount_acl, %struct.tomoyo_mount_acl* %3, i32 0, i32 0
  %44 = call i32 @tomoyo_put_number_union(i32* %43)
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tomoyo_parse_name_union(%struct.tomoyo_acl_param*, i32*) #2

declare dso_local i32 @tomoyo_parse_number_union(%struct.tomoyo_acl_param*, i32*) #2

declare dso_local i32 @tomoyo_update_domain(%struct.TYPE_2__*, i32, %struct.tomoyo_acl_param*, i32, i32*) #2

declare dso_local i32 @tomoyo_put_name_union(i32*) #2

declare dso_local i32 @tomoyo_put_number_union(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
