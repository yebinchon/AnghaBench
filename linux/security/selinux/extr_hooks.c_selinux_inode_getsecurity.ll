; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_getsecurity.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_getsecurity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.inode_security_struct = type { i32 }

@XATTR_SELINUX_SUFFIX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8**, i32)* @selinux_inode_getsecurity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_inode_getsecurity(%struct.inode* %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.inode_security_struct*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %12, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* @XATTR_SELINUX_SUFFIX, align 4
  %16 = call i64 @strcmp(i8* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %53

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call %struct.inode_security_struct* @inode_security(%struct.inode* %22)
  store %struct.inode_security_struct* %23, %struct.inode_security_struct** %13, align 8
  %24 = call i64 @has_cap_mac_admin(i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %28 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @security_sid_to_context_force(i32* @selinux_state, i32 %29, i8** %12, i32* %10)
  store i32 %30, i32* %11, align 4
  br label %36

31:                                               ; preds = %21
  %32 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %33 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @security_sid_to_context(i32* @selinux_state, i32 %34, i8** %12, i32* %10)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %53

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i8*, i8** %12, align 8
  %47 = load i8**, i8*** %8, align 8
  store i8* %46, i8** %47, align 8
  br label %51

48:                                               ; preds = %41
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @kfree(i8* %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %39, %18
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.inode_security_struct* @inode_security(%struct.inode*) #1

declare dso_local i64 @has_cap_mac_admin(i32) #1

declare dso_local i32 @security_sid_to_context_force(i32*, i32, i8**, i32*) #1

declare dso_local i32 @security_sid_to_context(i32*, i32, i8**, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
