; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_bucket_journal_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_bucket_journal_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { %struct.ocfs2_xattr_bucket* }
%struct.ocfs2_xattr_bucket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_xa_loc*, i32)* @ocfs2_xa_bucket_journal_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xa_bucket_journal_access(i32* %0, %struct.ocfs2_xa_loc* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ocfs2_xa_loc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_xattr_bucket*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.ocfs2_xa_loc* %1, %struct.ocfs2_xa_loc** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %9 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %8, i32 0, i32 0
  %10 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %9, align 8
  store %struct.ocfs2_xattr_bucket* %10, %struct.ocfs2_xattr_bucket** %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @ocfs2_xattr_bucket_journal_access(i32* %11, %struct.ocfs2_xattr_bucket* %12, i32 %13)
  ret i32 %14
}

declare dso_local i32 @ocfs2_xattr_bucket_journal_access(i32*, %struct.ocfs2_xattr_bucket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
