; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_init_xattr_bucket_xa_loc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_init_xattr_bucket_xa_loc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { i32, %struct.ocfs2_xattr_entry*, i32, %struct.ocfs2_xattr_bucket*, i32*, i32 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.ocfs2_xattr_entry = type { i32 }

@ocfs2_xa_bucket_loc_ops = common dso_local global i32 0, align 4
@OCFS2_XATTR_BUCKET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_entry*)* @ocfs2_init_xattr_bucket_xa_loc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_init_xattr_bucket_xa_loc(%struct.ocfs2_xa_loc* %0, %struct.ocfs2_xattr_bucket* %1, %struct.ocfs2_xattr_entry* %2) #0 {
  %4 = alloca %struct.ocfs2_xa_loc*, align 8
  %5 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %6 = alloca %struct.ocfs2_xattr_entry*, align 8
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %4, align 8
  store %struct.ocfs2_xattr_bucket* %1, %struct.ocfs2_xattr_bucket** %5, align 8
  store %struct.ocfs2_xattr_entry* %2, %struct.ocfs2_xattr_entry** %6, align 8
  %7 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %8 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %11 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %12, i32 0, i32 4
  store i32* @ocfs2_xa_bucket_loc_ops, i32** %13, align 8
  %14 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %15 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %16 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %15, i32 0, i32 3
  store %struct.ocfs2_xattr_bucket* %14, %struct.ocfs2_xattr_bucket** %16, align 8
  %17 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %18 = call i32 @bucket_xh(%struct.ocfs2_xattr_bucket* %17)
  %19 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %20 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %6, align 8
  %22 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %23 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %22, i32 0, i32 1
  store %struct.ocfs2_xattr_entry* %21, %struct.ocfs2_xattr_entry** %23, align 8
  %24 = load i32, i32* @OCFS2_XATTR_BUCKET_SIZE, align 4
  %25 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %26 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  ret void
}

declare dso_local i32 @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
