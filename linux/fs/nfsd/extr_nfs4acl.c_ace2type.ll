; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_ace2type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_ace2type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ace = type { i32, i32 }

@NFS4_ACE_IDENTIFIER_GROUP = common dso_local global i32 0, align 4
@ACL_GROUP = common dso_local global i16 0, align 2
@ACL_USER = common dso_local global i16 0, align 2
@ACL_USER_OBJ = common dso_local global i16 0, align 2
@ACL_GROUP_OBJ = common dso_local global i16 0, align 2
@ACL_OTHER = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.nfs4_ace*)* @ace2type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @ace2type(%struct.nfs4_ace* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.nfs4_ace*, align 8
  store %struct.nfs4_ace* %0, %struct.nfs4_ace** %3, align 8
  %4 = load %struct.nfs4_ace*, %struct.nfs4_ace** %3, align 8
  %5 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %29 [
    i32 129, label %7
    i32 128, label %23
    i32 130, label %25
    i32 131, label %27
  ]

7:                                                ; preds = %1
  %8 = load %struct.nfs4_ace*, %struct.nfs4_ace** %3, align 8
  %9 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NFS4_ACE_IDENTIFIER_GROUP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i16, i16* @ACL_GROUP, align 2
  %16 = sext i16 %15 to i32
  br label %20

17:                                               ; preds = %7
  %18 = load i16, i16* @ACL_USER, align 2
  %19 = sext i16 %18 to i32
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ %16, %14 ], [ %19, %17 ]
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %2, align 2
  br label %31

23:                                               ; preds = %1
  %24 = load i16, i16* @ACL_USER_OBJ, align 2
  store i16 %24, i16* %2, align 2
  br label %31

25:                                               ; preds = %1
  %26 = load i16, i16* @ACL_GROUP_OBJ, align 2
  store i16 %26, i16* %2, align 2
  br label %31

27:                                               ; preds = %1
  %28 = load i16, i16* @ACL_OTHER, align 2
  store i16 %28, i16* %2, align 2
  br label %31

29:                                               ; preds = %1
  %30 = call i32 (...) @BUG()
  store i16 -1, i16* %2, align 2
  br label %31

31:                                               ; preds = %29, %27, %25, %23, %20
  %32 = load i16, i16* %2, align 2
  ret i16 %32
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
