; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_bucket_fill_value_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_bucket_fill_value_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.ocfs2_xattr_bucket* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_xattr_bucket = type { i64* }
%struct.ocfs2_xattr_value_buf = type { i64, i32 }

@ocfs2_journal_access = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_value_buf*)* @ocfs2_xa_bucket_fill_value_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xa_bucket_fill_value_buf(%struct.ocfs2_xa_loc* %0, %struct.ocfs2_xattr_value_buf* %1) #0 {
  %3 = alloca %struct.ocfs2_xa_loc*, align 8
  %4 = alloca %struct.ocfs2_xattr_value_buf*, align 8
  %5 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %3, align 8
  store %struct.ocfs2_xattr_value_buf* %1, %struct.ocfs2_xattr_value_buf** %4, align 8
  %10 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %11 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %10, i32 0, i32 2
  %12 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %11, align 8
  store %struct.ocfs2_xattr_bucket* %12, %struct.ocfs2_xattr_bucket** %5, align 8
  %13 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %6, align 8
  %18 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %19 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %25 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @namevalue_size_xe(%struct.TYPE_4__* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %28, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  %38 = load %struct.super_block*, %struct.super_block** %6, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %37, %40
  %42 = icmp ne i32 %33, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %46 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load i32, i32* @ocfs2_journal_access, align 4
  %57 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %4, align 8
  %58 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %60 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %4, align 8
  %67 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @namevalue_size_xe(%struct.TYPE_4__*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
