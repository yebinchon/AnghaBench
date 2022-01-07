; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_permission.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fuse_conn = type { i64 }
%struct.fuse_inode = type { i32, i32 }

@EACCES = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@STATX_MODE = common dso_local global i32 0, align 4
@STATX_UID = common dso_local global i32 0, align 4
@STATX_GID = common dso_local global i32 0, align 4
@MAY_ACCESS = common dso_local global i32 0, align 4
@MAY_CHDIR = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @fuse_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_permission(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_inode*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %11)
  store %struct.fuse_conn* %12, %struct.fuse_conn** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %14 = call i32 @fuse_allow_current_process(%struct.fuse_conn* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EACCES, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %152

19:                                               ; preds = %2
  %20 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %21 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MAY_EXEC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %24
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @S_ISREG(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %29, %19
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %36)
  store %struct.fuse_inode* %37, %struct.fuse_inode** %9, align 8
  %38 = load i32, i32* @STATX_MODE, align 4
  %39 = load i32, i32* @STATX_UID, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @STATX_GID, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %45 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @READ_ONCE(i32 %46)
  %48 = and i32 %43, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %35
  %51 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %52 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (...) @get_jiffies_64()
  %55 = call i64 @time_before64(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50, %35
  store i32 1, i32* %7, align 4
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @fuse_perm_getattr(%struct.inode* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %152

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %50
  br label %67

67:                                               ; preds = %66, %29, %24
  %68 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %69 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %67
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @generic_permission(%struct.inode* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @EACCES, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %72
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %80
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @fuse_perm_getattr(%struct.inode* %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = load %struct.inode*, %struct.inode** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @generic_permission(%struct.inode* %90, i32 %91)
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %89, %83
  br label %94

94:                                               ; preds = %93, %80, %72
  br label %150

95:                                               ; preds = %67
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @MAY_ACCESS, align 4
  %98 = load i32, i32* @MAY_CHDIR, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @fuse_access(%struct.inode* %103, i32 %104)
  store i32 %105, i32* %8, align 4
  br label %149

106:                                              ; preds = %95
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @MAY_EXEC, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %148

111:                                              ; preds = %106
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @S_ISREG(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %148

117:                                              ; preds = %111
  %118 = load %struct.inode*, %struct.inode** %4, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @S_IXUGO, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %147, label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* @EACCES, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %152

130:                                              ; preds = %124
  %131 = load %struct.inode*, %struct.inode** %4, align 8
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @fuse_perm_getattr(%struct.inode* %131, i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %130
  %137 = load %struct.inode*, %struct.inode** %4, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @S_IXUGO, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %136
  %144 = load i32, i32* @EACCES, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %152

146:                                              ; preds = %136, %130
  br label %147

147:                                              ; preds = %146, %117
  br label %148

148:                                              ; preds = %147, %111, %106
  br label %149

149:                                              ; preds = %148, %102
  br label %150

150:                                              ; preds = %149, %94
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %143, %127, %63, %16
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @fuse_allow_current_process(%struct.fuse_conn*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @time_before64(i32, i32) #1

declare dso_local i32 @get_jiffies_64(...) #1

declare dso_local i32 @fuse_perm_getattr(%struct.inode*, i32) #1

declare dso_local i32 @generic_permission(%struct.inode*, i32) #1

declare dso_local i32 @fuse_access(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
