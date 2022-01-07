; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_find_other.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_find_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.sockaddr_un = type { i64* }
%struct.path = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { %struct.path }

@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@EPROTOTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, %struct.sockaddr_un*, i32, i32, i32, i32*)* @unix_find_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @unix_find_other(%struct.net* %0, %struct.sockaddr_un* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sockaddr_un*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sock*, align 8
  %15 = alloca %struct.path, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.dentry*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sockaddr_un* %1, %struct.sockaddr_un** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.sockaddr_un*, %struct.sockaddr_un** %9, align 8
  %20 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %80

25:                                               ; preds = %6
  %26 = load %struct.sockaddr_un*, %struct.sockaddr_un** %9, align 8
  %27 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %30 = call i32 @kern_path(i64* %28, i32 %29, %struct.path* %15)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %111

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 0
  %36 = load %struct.dentry*, %struct.dentry** %35, align 8
  %37 = call %struct.inode* @d_backing_inode(%struct.dentry* %36)
  store %struct.inode* %37, %struct.inode** %17, align 8
  %38 = load %struct.inode*, %struct.inode** %17, align 8
  %39 = load i32, i32* @MAY_WRITE, align 4
  %40 = call i32 @inode_permission(%struct.inode* %38, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %109

44:                                               ; preds = %34
  %45 = load i32, i32* @ECONNREFUSED, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %16, align 4
  %47 = load %struct.inode*, %struct.inode** %17, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @S_ISSOCK(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %109

53:                                               ; preds = %44
  %54 = load %struct.inode*, %struct.inode** %17, align 8
  %55 = call %struct.sock* @unix_find_socket_byinode(%struct.inode* %54)
  store %struct.sock* %55, %struct.sock** %14, align 8
  %56 = load %struct.sock*, %struct.sock** %14, align 8
  %57 = icmp ne %struct.sock* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %109

59:                                               ; preds = %53
  %60 = load %struct.sock*, %struct.sock** %14, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = call i32 @touch_atime(%struct.path* %15)
  br label %67

67:                                               ; preds = %65, %59
  %68 = call i32 @path_put(%struct.path* %15)
  %69 = load i32, i32* @EPROTOTYPE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %16, align 4
  %71 = load %struct.sock*, %struct.sock** %14, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.sock*, %struct.sock** %14, align 8
  %78 = call i32 @sock_put(%struct.sock* %77)
  br label %111

79:                                               ; preds = %67
  br label %107

80:                                               ; preds = %6
  %81 = load i32, i32* @ECONNREFUSED, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %16, align 4
  %83 = load %struct.net*, %struct.net** %8, align 8
  %84 = load %struct.sockaddr_un*, %struct.sockaddr_un** %9, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call %struct.sock* @unix_find_socket_byname(%struct.net* %83, %struct.sockaddr_un* %84, i32 %85, i32 %86, i32 %87)
  store %struct.sock* %88, %struct.sock** %14, align 8
  %89 = load %struct.sock*, %struct.sock** %14, align 8
  %90 = icmp ne %struct.sock* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %80
  %92 = load %struct.sock*, %struct.sock** %14, align 8
  %93 = call %struct.TYPE_2__* @unix_sk(%struct.sock* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.path, %struct.path* %94, i32 0, i32 0
  %96 = load %struct.dentry*, %struct.dentry** %95, align 8
  store %struct.dentry* %96, %struct.dentry** %18, align 8
  %97 = load %struct.dentry*, %struct.dentry** %18, align 8
  %98 = icmp ne %struct.dentry* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load %struct.sock*, %struct.sock** %14, align 8
  %101 = call %struct.TYPE_2__* @unix_sk(%struct.sock* %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 @touch_atime(%struct.path* %102)
  br label %104

104:                                              ; preds = %99, %91
  br label %106

105:                                              ; preds = %80
  br label %111

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %106, %79
  %108 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %108, %struct.sock** %7, align 8
  br label %114

109:                                              ; preds = %58, %52, %43
  %110 = call i32 @path_put(%struct.path* %15)
  br label %111

111:                                              ; preds = %109, %105, %76, %33
  %112 = load i32, i32* %16, align 4
  %113 = load i32*, i32** %13, align 8
  store i32 %112, i32* %113, align 4
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %114

114:                                              ; preds = %111, %107
  %115 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %115
}

declare dso_local i32 @kern_path(i64*, i32, %struct.path*) #1

declare dso_local %struct.inode* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i32 @S_ISSOCK(i32) #1

declare dso_local %struct.sock* @unix_find_socket_byinode(%struct.inode*) #1

declare dso_local i32 @touch_atime(%struct.path*) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local %struct.sock* @unix_find_socket_byname(%struct.net*, %struct.sockaddr_un*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @unix_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
