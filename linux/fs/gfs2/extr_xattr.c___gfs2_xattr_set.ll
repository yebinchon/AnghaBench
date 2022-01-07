; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c___gfs2_xattr_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c___gfs2_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_ea_location = type { i32, i64 }

@EPERM = common dso_local global i32 0, align 4
@GFS2_EA_MAX_NAME_LEN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4
@GFS2_DIF_APPENDONLY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gfs2_xattr_set(%struct.inode* %0, i8* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gfs2_inode*, align 8
  %15 = alloca %struct.gfs2_sbd*, align 8
  %16 = alloca %struct.gfs2_ea_location, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %20)
  store %struct.gfs2_inode* %21, %struct.gfs2_inode** %14, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %22)
  store %struct.gfs2_sbd* %23, %struct.gfs2_sbd** %15, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %17, align 4
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call i64 @IS_IMMUTABLE(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %6
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = call i64 @IS_APPEND(%struct.inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %6
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %168

36:                                               ; preds = %29
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* @GFS2_EA_MAX_NAME_LEN, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @ERANGE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %168

43:                                               ; preds = %36
  %44 = load i8*, i8** %10, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @gfs2_xattr_remove(%struct.gfs2_inode* %47, i32 %48, i8* %49)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* @ENODATA, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @XATTR_REPLACE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %60, %55, %46
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %7, align 4
  br label %168

63:                                               ; preds = %43
  %64 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  %65 = load i32, i32* %17, align 4
  %66 = load i64, i64* %11, align 8
  %67 = call i64 @ea_check_size(%struct.gfs2_sbd* %64, i32 %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @ERANGE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %168

72:                                               ; preds = %63
  %73 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %74 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @XATTR_REPLACE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @ENODATA, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %168

85:                                               ; preds = %77
  %86 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @ea_init(%struct.gfs2_inode* %86, i32 %87, i8* %88, i8* %89, i64 %90)
  store i32 %91, i32* %7, align 4
  br label %168

92:                                               ; preds = %72
  %93 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @gfs2_ea_find(%struct.gfs2_inode* %93, i32 %94, i8* %95, %struct.gfs2_ea_location* %16)
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %18, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %18, align 4
  store i32 %100, i32* %7, align 4
  br label %168

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %16, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %152

105:                                              ; preds = %101
  %106 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %107 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @GFS2_DIF_APPENDONLY, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %16, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @brelse(i32 %114)
  %116 = load i32, i32* @EPERM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %7, align 4
  br label %168

118:                                              ; preds = %105
  %119 = load i32, i32* @EEXIST, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @XATTR_CREATE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %147, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %16, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @GFS2_EA_IS_STUFFED(i64 %127)
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %19, align 4
  %132 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %133 = load i32, i32* %13, align 4
  %134 = load i8*, i8** %9, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = load i64, i64* %11, align 8
  %137 = call i32 @ea_set_i(%struct.gfs2_inode* %132, i32 %133, i8* %134, i8* %135, i64 %136, %struct.gfs2_ea_location* %16)
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* %18, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %125
  %141 = load i32, i32* %19, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %145 = call i32 @ea_set_remove_unstuffed(%struct.gfs2_inode* %144, %struct.gfs2_ea_location* %16)
  br label %146

146:                                              ; preds = %143, %140, %125
  br label %147

147:                                              ; preds = %146, %118
  %148 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %16, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @brelse(i32 %149)
  %151 = load i32, i32* %18, align 4
  store i32 %151, i32* %7, align 4
  br label %168

152:                                              ; preds = %101
  %153 = load i32, i32* @ENODATA, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @XATTR_REPLACE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %152
  %160 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %161 = load i32, i32* %13, align 4
  %162 = load i8*, i8** %9, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = load i64, i64* %11, align 8
  %165 = call i32 @ea_set_i(%struct.gfs2_inode* %160, i32 %161, i8* %162, i8* %163, i64 %164, %struct.gfs2_ea_location* null)
  store i32 %165, i32* %18, align 4
  br label %166

166:                                              ; preds = %159, %152
  %167 = load i32, i32* %18, align 4
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %166, %147, %112, %99, %85, %82, %69, %61, %40, %33
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i32 @gfs2_xattr_remove(%struct.gfs2_inode*, i32, i8*) #1

declare dso_local i64 @ea_check_size(%struct.gfs2_sbd*, i32, i64) #1

declare dso_local i32 @ea_init(%struct.gfs2_inode*, i32, i8*, i8*, i64) #1

declare dso_local i32 @gfs2_ea_find(%struct.gfs2_inode*, i32, i8*, %struct.gfs2_ea_location*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @GFS2_EA_IS_STUFFED(i64) #1

declare dso_local i32 @ea_set_i(%struct.gfs2_inode*, i32, i8*, i8*, i64, %struct.gfs2_ea_location*) #1

declare dso_local i32 @ea_set_remove_unstuffed(%struct.gfs2_inode*, %struct.gfs2_ea_location*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
